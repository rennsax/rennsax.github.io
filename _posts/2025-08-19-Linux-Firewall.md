---
title: 记录一次 NixOS 上的网络问题排查
layout: post
tags: Nix Networking
date: 2025-08-19 21:30:00 +0800
last_modified_at: 2025-11-19 14:14:07 +0800
lang: zh-CN
description: 神奇的防火墙
---

## 起因

实验室的主机连接了两个网络接口：

``` text
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute
       valid_lft forever preferred_lft forever
2: enp129s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 34:5a:60:4e:5e:0d brd ff:ff:ff:ff:ff:ff
    altname enx345a604e5e0d
    inet 192.168.29.135/20 brd 192.168.31.255 scope global dynamic noprefixroute enp129s0
       valid_lft 3472sec preferred_lft 3472sec
    inet6 fe80::7b0b:bd43:f74b:b187/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
3: wlp130s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether 44:38:e8:93:ec:66 brd ff:ff:ff:ff:ff:ff
    altname wlx4438e893ec66
    inet 192.168.61.129/24 brd 192.168.61.255 scope global noprefixroute wlp130s0f0
       valid_lft forever preferred_lft forever
    inet6 fe80::e4a8:5ccf:ce86:9e0c/64 scope link noprefixroute
       valid_lft forever preferred_lft forever
```

使用 `enp129s0` 接口配置的 IP 地址，可以 ping 通也可以连上 ssh，但是使用 `wlp130s0f0` 接口的 IP 地址却不可以。

## 排查过程

GPT 推荐我先使用 `tcpdump` 进行抓包：

``` console
$ sudo tcpdump -i wlp130s0f0 icmp # 然后从我的 MacBook ping 192.168.61.129 (wlan 接口的 IP)
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on wlp130s0f0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
15:26:20.091266 IP 192.168.60.106 > rennsax-nixos: ICMP echo request, id 2354, seq 0, length 64
15:26:21.010852 IP 192.168.60.106 > rennsax-nixos: ICMP echo request, id 2354, seq 1, length 64
15:26:22.038102 IP 192.168.60.106 > rennsax-nixos: ICMP echo request, id 2354, seq 2, length 64
...
```

可以看到主机收到了 ICMP 包，但是并没有回复。问题不在链路层，可能出在防火墙上。我也是才了解到，现代 GNU/Linux 操作系统的防火墙一般有两到三层：

``` text
---------------------------
|    firewalld, UFW       | high-level
| nixos-firewall-tool, ...| user interface
---------------------------
|   iptables, nftables    | low-level user interface
---------------------------
|     netfilter           | kernel framework
---------------------------
```

我试着用 `iptables -F` 把规则全部清除，但是没有效果。然后我注意到主机 NixOS 上有一个 systemd 服务 `firewall.service`，将其停用后，ping 和 ssh 都正常了。

那么现在锁定问题在防火墙上了。那为什么 `iptables -F` 没有生效呢？直接看 `iptables -L -v -n` 的输出，感觉 NixOS 的默认配置允许了 22 端口和 ICMP 协议。反复检查后也确认 `iptables -F` 没有什么作用。

于是我检查了一下 `firewall.service` 服务：`systemctl cat firewall.service`，直接看 `ExecStop` 字段的脚本内容，发现最后一条命令：

``` shell
ip46tables() {
  iptables -w "$@"
  ip6tables -w "$@"
}
ip46tables -t mangle -D PREROUTING -j nixos-fw-rpfilter 2>/dev/null || true
```

尝试直接执行最后一条命令，结果 ping 和 ssh 恢复正常了。重启 `firewall.service` 后，又连不上了。

这样就锁定了问题所在：mangle 表中的 PREROUTING 链。之前 `iptables -F` 只会清除默认的 filter 表，所以没有清除导致问题的规则。

查看 mangle 表：

``` console
$ sudo iptables -t mangle -L
Chain PREROUTING (policy ACCEPT)
target     prot opt source               destination
nixos-fw-rpfilter  all  --  anywhere             anywhere

Chain INPUT (policy ACCEPT)
target     prot opt source               destination

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination

Chain POSTROUTING (policy ACCEPT)
target     prot opt source               destination

Chain nixos-fw-rpfilter (1 references)
target     prot opt source               destination
RETURN     all  --  anywhere             anywhere             rpfilter validmark
RETURN     udp  --  anywhere             anywhere             udp spt:bootps dpt:bootpc
RETURN     udp  --  0.0.0.0              255.255.255.255      udp spt:bootpc dpt:bootps
DROP       all  --  anywhere             anywhere
```

观察知道，`nixos-fw-rpfilter` 链中有一个 DROP 规则，应该就是它导致问题。查询资料后知道，这个链配置的是 [Reverse Path Filtering](https://tldp.org/HOWTO/Adv-Routing-HOWTO/lartc.kernel.rpf.html)，作用是当回复的接口和包发入的接口不同的时候，则把回复的包抛弃。我验证了一下，当主机回复 MacBook 发来的包时，确实会优先走 `enp129s0` 接口：

``` console
$ ip route get 192.168.60.106
192.168.60.106 via 192.168.16.1 dev enp129s0 src 192.168.29.135 uid 1000
    cache
```

这就导致 rpfilter 认证失败，因为包显然是从 `wlp130s0f0` 接口发入的。

为什么主机会把回复的包路由到 `enp129s0` 接口呢？可以看 `ip route` 中显示的路由规则：

``` console
$ ip route
default via 192.168.16.1 dev enp129s0 proto dhcp src 192.168.29.135 metric 100
default via 192.168.61.255 dev wlp130s0f0 proto static metric 600
192.168.16.0/20 dev enp129s0 proto kernel scope link src 192.168.29.135 metric 100
192.168.61.0/24 dev wlp130s0f0 proto kernel scope link src 192.168.61.129 metric 600
```

因为 `192.168.60.106` 未能匹配后两条规则，只能匹配默认规则，而第一条 `enp129s0` 的优先级较高，所以优先走的是这个接口。

## 问题起因

观察 `ip route` 输出中的第二条规则，发现 `192.168.61.255` 这个网关有些可疑。正常网关都是以 `.1` 结尾，`.255` 结尾的一般是广播地址（发送到广播地址的包会被局域网内的所有设备接收，一般用于局域网发现、DHCP 等）。实际上，这是因为我搞错了网关和广播地址，配置 `wlp130s0f0` 接口静态 IP 的时候出了问题。除了搞错了网关，我还弄错了子网掩码，`wlp130s0f0` 对应的局域网的子网掩码是 `255.255.254.0`，对应的是 `*/23` 这样的 IP 地址。因为子网掩码搞错了，所以最后一条路由规则没法儿匹配 `192.168.60.106`，最后只能按第一条规则进行路由，所以出了问题。

## 解决方法

在 `nmtui` 中正确配置网关和子网掩码后就可以了。

## 拓展知识

NixOS 配置 Firewall 其实很简单。如果使用 iptables（默认情况），NixOS 会创建 `nixos-fw` 开头的几条链，其中定义了几条允许的规则，剩下的都会被 drop 掉。举个例子：

``` nix
{
  networking.firewall = {
    enable = true; # default
    allowPing = true; # default
  };
  service.openssh.enable = true;
}
```

这样的配置下，NixOS 会创建匹配 icmptype 8 和 openssh 默认端口 tcp/22 的两条规则，导入到 `nixos-fw-accept` 中。所以除了端口 tcp/22 和 ICMP 消息以外，其他的包都会被防火墙挡住。

为了开发方便，经常会选择开启某些端口，例如：

``` nix
{
  networking.firewall.allowTCPPorts = [ 8000 ];
}
```

或者使用 `nixos-firewall-tool` 临时放行端口：

``` shell
sudo nixos-firewall-tool open tcp 8000
```
