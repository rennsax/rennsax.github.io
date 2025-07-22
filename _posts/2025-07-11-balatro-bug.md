---
title: iOS 版小丑牌 Bug 修复记录
layout: post
image:
  path: /assets/img/2025-07/balatro-logo.png
  alt: 2024 TGA 年度最佳独立游戏《Balatro》
tags: Game
lang: zh-CN
description: 会写点儿代码还是能派上用场
date: 2025-07-11 17:11:25 +0800
---

## Bug 起因

最近几天，下班回家后已经有些疲惫了，因此不太乐意打开电脑玩几把可能让我恼羞成怒的卡牌对战游戏（说的就是炉石传说）。同为卡牌游戏，小丑牌成了我近期放松心情的不二之选，而且移动端的小丑牌体验和电脑端几乎一样，使我能随心所欲地开一把摸摸鱼打打牌😋。

7 月 9 日晚上我向往常一样躺在床上玩小丑牌，等待倦意降临。当时我正在打一把红牌金注爽局，因为很早拿到了传说小丑约里克，六底注结束的时候已经养到了 <span class="hl-xmult">X12</span> 倍率。

![超大约里克](/assets/img/2025-07/huge-Yorick.jpg)
_轮椅级别的_

我心想着这把应该稳赢了，七八底注便怎么爽怎么玩，卖了可乐跳了个吊饰标签（塔罗包五选二）。这个时候悲剧发生了——因为我开皇帝后小退了一下，触发了[双倍标签的 SL bug][double-tag-bug]，卡在了塔罗牌界面出不去……

这个 bug 其实可以通过重开一把来解决，但是这一局实在是太爽了，而且这是非常罕见的给约里克贴金的机会，所以我下定决心，一定要修好这个存档，最后赢下这一局。

查阅资料后，我发现其实只需要修改游戏存档就可以修复这个 bug。但是我在 iPhone 上玩小丑牌，iOS 严格的沙盒机制和隐藏的文件系统导致提取和替换存档文件变得非常困难……

## 使用 iMazing 提取和替换存档

查阅一些资料后，我找到了 [iMazing][imazing] 这个备份软件，发现可以用备份功能来提取和替换应用数据。iMazing 可以将应用数据提取成一个 `imazingapp` 文件（其实就是一个压缩包），并允许从 `imazingapp` 文件中恢复应用数据。

下载安装 iMazing 并链接我的 iPhone 后，选择 Manage Apps，找到 Balatro：

![Extract imazingapp](/assets/img/2025-07/extract-imazingapp.png)

右键 Balatro 选择“Back Up App Data”，接着选择存储位置，即可开始提取 Balatro 的应用数据。不过，这个过程耗时非常久——因为 iMazing 需要先执行一次**全量的** iPhone 备份，然后才能从备份中提取应用的数据。我的 iPhone 有 130 多 GB 的数据，光是备份就进行了两个小时左右……

提取完成后，可以使用 `unzip` 等解压缩应用提取 `imazingapp` 中的数据：

``` console
$ unzip -l ./Balatro.imazingapp
Archive:  ./Balatro.imazingapp
  Length      Date    Time    Name
---------  ---------- -----   ----
     1637  07-10-2025 16:56   iTunesMetadata.plist
        0  07-10-2025 16:56   Payload/
        0  07-10-2025 16:56   Payload/Balatro.app/
    56928  07-10-2025 16:56   Payload/Balatro.app/Info.plist
        0  07-10-2025 16:56   Container/
        0  07-10-2025 16:56   Container/Library/
        0  07-10-2025 16:56   Container/Documents/
        0  07-10-2025 16:56   Container/Library/
        0  06-19-2025 18:22   Container/Documents/
        0  07-10-2025 16:56   Container/Library/Application Support/
        0  07-10-2025 16:56   Container/Library/WebKit/
        0  07-10-2025 16:56   Container/Library/Preferences/
     1421  07-10-2025 16:33   Container/Library/GameCenterManager.plist
        0  06-19-2025 18:43   Container/Library/HTTPStorages/
        0  06-19-2025 18:45   Container/Library/Cookies/
    24576  07-10-2025 16:33   Container/Library/Application Support/Singular_5d7c34ae84b9cf51b58d5b5e07def728becf1efa.sqlite
        0  07-10-2025 16:56   Container/Library/Application Support/game/
        0  07-10-2025 16:56   Container/Library/WebKit/WebsiteData/
    19122  07-10-2025 16:34   Container/Library/Preferences/com.playstack.balatropremium.plist
      143  06-19-2025 18:43   Container/Library/Preferences/com.apple.gamecenter.plist
      945  07-10-2025 16:33   Container/Library/Application Support/game/settings.jkr
        0  07-10-2025 16:56   Container/Library/Application Support/game/1/
        0  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/SearchHistory/
        0  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/IndexedDB/
        0  07-10-2025 16:56   Container/Library/WebKit/WebsiteData/MediaKeys/
        0  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/DeviceIdHashSalts/
        0  07-10-2025 16:56   Container/Library/WebKit/WebsiteData/Default/
        0  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/LocalStorage/
        0  07-10-2025 16:56   Container/Library/WebKit/WebsiteData/ResourceLoadStatistics/
    12445  07-10-2025 00:30   Container/Library/Application Support/game/1/save.jkr
        0  07-10-2025 16:56   Container/Library/WebKit/WebsiteData/MediaKeys/v1/
        8  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/Default/salt
   118784  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/ResourceLoadStatistics/observations.db
        8  06-19-2025 18:45   Container/Library/WebKit/WebsiteData/MediaKeys/v1/salt
     4032  07-10-2025 16:56   .lock
---------                     -------
   240049                     35 files
```

这里的文件 `Container/Library/Application Support/game/1/save.jkr` 就是我苦苦寻找的游戏存档。将其上传到 [Balatro ReTag][balatro retag] 网页中进行修复，替换掉原先的存档，最后压缩成新的 `imazingapp` 并从新的应用数据中恢复 Balatro 数据，便完成了存档替换！

应用数据恢复后，iPhone 会重启并进入设置引导界面，注意不要选择从其他设备传输数据即可。回到 Balatro 游戏界面，我的存档终于死而复生了😭。

![Final](/assets/img/2025-07/final-Yorick.jpg)
_终局_

## 附录：iOS 完整存档提取

事实上，其他平台的小丑牌存档目录下应该会有三个文件：

``` console
$ ls -1
meta.jkr
profile.jkr
save.jkr
```

这些存档文件实质上是使用 deflate-raw 格式压缩后的 Lua table，`save.jkr` 是当前这一局游戏的信息，其他是一些收藏类数据。可以使用 Python 来查看存档信息：

``` shell
python3 -c "import zlib,sys;sys.stdout.buffer.write(zlib.decompress(sys.stdin.buffer.read(),-zlib.MAX_WBITS))" < ./save.jkr
```

前面可以看到，使用 iMazing 提取出来的应用数据中只能看到 `save.jkr` 这个文件。没有另外两个文件的话，就不能把 iOS 上的完整存档导出到其他平台上。

稍加研究后，我发现 `meta.jkr` 和 `profile.jkr` 的数据其实存储在 `com.playstack.balatropremium.plist` 这个 Plist 文件中。这应该是因为 iOS 上的小丑牌需要使用 Apple Game Center 的云同步功能。为了提取出这两个存档文件，我写了一个对应的 Python 脚本：

``` python
import zlib
import plistlib
from pathlib import Path

def extract_ios_data(plist_file: str | Path, save_id: int = 1):
    with open(plist_file, 'rb') as f:
        plist_data = plistlib.load(f)

    meta_key = f"{save_id}__meta.jkr.data"
    profile_key = f"{save_id}__profile.jkr.data"

    meta_jkr = plist_data[meta_key]
    profile_jkr = plist_data[profile_key]

    Path(str(save_id)).mkdir(exist_ok=True)

    with open(f"{save_id}/meta.jkr", "wb") as f:
        f.write(meta_jkr)

    with open(f"{save_id}/profile.jkr", "wb") as f:
        f.write(profile_jkr)

if __name__ == "__main__":
    extract_ios_data("./com.playstack.balatropremium.plist")
```

这个脚本会解析当前目录下的 `com.playstack.balatropremium.plist` 文件并提取出的 `meta.jkr` 和 `profile.jkr` 两个存档。再结合之前的 `save.jkr`，就可以获取完整的存档数据，迁移到其他平台。

## 附录：小丑牌源码获取

这次 bug 经历也是我开始阅读小丑牌源码的开端。小丑牌使用 live2D 游戏引擎开发，其游戏源码完整地保存在游戏文件中 `.love` 后缀的压缩包中。后续有空的话，我可能写一些小丑牌源码阅读体验之类的内容。

[double-tag-bug]: https://www.bilibili.com/opus/1023043166767415319?from=search
[iMazing]: https://imazing.com/
[Balatro ReTag]: https://larswijn.github.io/BalatroReTag/

<style>
.hl-xmult {
    color: #fff;
    background-color: #ff4c40;
    border-radius: 0.4em;
    padding: 0 0.4ch;
    font-weight: bold;
}
<style>
