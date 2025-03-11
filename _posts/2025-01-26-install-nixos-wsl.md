---
title: Install NixOS on WSL
layout: post
tags: Nix WSL
date: 2025-01-26 18:50:00 +0800
last_modified_at: 2025-03-11 11:07:55 +0800
---

**WSL (Windows Subsystem for Linux)** is a brilliant feature of Microsoft Windows that allows for using a Linux environment without the need for a separate virtual machine or dual booting. Three years ago, I have experienced a nice journey on WSL with my PC, as I'm much more familiar with a “Linuxified” development environment. Until I switched my workstation to MacBook, WSL has always been my good companion.

During this winter vacation, I spend much time with my Windows PC (mainly because I want to play Hearthstone on Windows). Then I find it really inconvenient to transfer files from my Windows PC to my workstation. Usually I will use `python -m http.server` to expose the file system to LAN, but I'm a novice when it comes to Windows — I does not even know about how to install Python interpreter and set the environment variables correctly on Windows. Then I think it's the best chance for me to pick up WSL again, as I also heard about the [NixOS-WSL][nixos-wsl] project before, which allows me to run my favorite GNU/Linux distro, NixOS on WSL.

## Basic Usage of WSL

With the `wsl` command we can administer numerous WSL distros on one machine. It's just like `docker` or `orbctl` if you are familiar with those virtualization tools.

``` powershell
# Import the tarball and create the distro named "NixOS",
# and install it under C:\Users\xxx\NixOS.
wsl --import NixOS $env:USERPROFILE\NixOS\ nixos-wsl.tar.gz --version 2

# "unregister" means remove.
wsl --unregister NixOS
```

Usually users can install WSL distribution in Microsoft Store, where the newest Ubuntu is available. For NixOS and other distributions, we need to install from tarball. Here the `nixos-wsl.tar.gz` tarball can be downloaded from the [NixOS-WSL][nixos-wsl] project, or we can build our own tarball, which will be discussed later.

After a distro is installed, type `wsl` in PowerShell to spawn a new shell in your WSL. After exiting the shell, we come back to PowerShell, but WSL keeps working as a company of your Windows system. Use `wsl --shutdown` to terminate the execution of WSL.

## Communication Between WSL and Windows

WSL and its host Windows can communicate with each other, almost out-of-box. This feature is also prevalent for other VM managers like VMware.

At Windows side, you can visit the service on WSL with `localhost` or `127.0.0.1`. By default, WSL will expose its service to Windows, and ports are equivalently mapped to Windows as possible. For example, if you open a HTTP service on WSL with `python -m http.server` and visit `http://127.0.0.1:8000` in your browser, you will just see the filesystem in WSL.

At WSL side it's a little more complicated. We need to know the IP address of the host Windows, as WSL and Windows are included in the same virtual network area. The command copied from [the official documentation][wsl network] is useful:

``` shell
ip route show | grep -i default | awk '{ print $3}'
```

Then we can access the service on Windows with the output IP address. For example, if the output is `172.30.98.229`, we can access the Clash service on Windows with `http://172.30.98.229:7897`, assuming `7897` is the port number. However, **remember to turn off the firewall** on Windows!

## Build My Own WSL Tarball

This routine is much more simpler than I think it would be, since [NixOS-WSL][nixos-wsl] provides a sophisticated workaround for building the tarball. Appreciate for their works!

I build my own WSL tarball from Nix flake. The core step is concentrated into two commands:

``` shell
nix build .#nixosConfigurations."wsl-nixos".config.system.build.tarballBuilder
sudo ./result/bin/nixos-wsl-tarball-builder nixos-wsl.tar.gz
```

where `wsl-nixos` is the configuration you write in `flake.nix`. [My WSL configuration](https://github.com/rennsax/dotfiles/tree/main/machines/wsl-nixos) is here for reference.

I've made this routine a Github workflow so I can automatically build the tarball when necessary. It's rather convenient when I want to install WSL on a new PC.

[nixos-wsl]: https://github.com/nix-community/NixOS-WSL
[wsl install manual]: https://learn.microsoft.com/en-us/windows/wsl/install-manual
[wsl network]: https://learn.microsoft.com/en-us/windows/wsl/networking
