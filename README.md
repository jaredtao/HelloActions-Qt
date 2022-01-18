# HelloActions-Qt

## 简介

演示github中的Qt项目，使用CI持续集成(Github actions)

## status
| [Windows][win-link]| [Ubuntu][ubuntu-link]|[MacOS][macos-link]|[Android][android-link]|[IOS][ios-link]|
|---------------|---------------|-----------------|-----------------|----------------|
| ![win-badge]  | ![ubuntu-badge]      | ![macos-badge] |![android-badge]   |![ios-badge]   |


|[License][license-link]| [Release][release-link]|[Download][download-link]|[Issues][issues-link]|[Wiki][wiki-links]|
|-----------------|-----------------|-----------------|-----------------|-----------------|
|![license-badge] |![release-badge] | ![download-badge]|![issues-badge]|![wiki-badge]|

[win-link]: https://github.com/JaredTao/HelloActions-Qt/actions?query=workflow%3AWindows "WindowsAction"
[win-badge]: https://github.com/JaredTao/HelloActions-Qt/workflows/Windows/badge.svg  "Windows"

[ubuntu-link]: https://github.com/JaredTao/HelloActions-Qt/actions?query=workflow%3AUbuntu "UbuntuAction"
[ubuntu-badge]: https://github.com/JaredTao/HelloActions-Qt/workflows/Ubuntu/badge.svg "Ubuntu"

[macos-link]: https://github.com/JaredTao/HelloActions-Qt/actions?query=workflow%3AMacOS "MacOSAction"
[macos-badge]: https://github.com/JaredTao/HelloActions-Qt/workflows/MacOS/badge.svg "MacOS"

[android-link]: https://github.com/JaredTao/HelloActions-Qt/actions?query=workflow%3AAndroid "AndroidAction"
[android-badge]: https://github.com/JaredTao/HelloActions-Qt/workflows/Android/badge.svg "Android"

[ios-link]: https://github.com/JaredTao/HelloActions-Qt/actions?query=workflow%3AIOS "IOSAction"
[ios-badge]: https://github.com/JaredTao/HelloActions-Qt/workflows/IOS/badge.svg "IOS"

[release-link]: https://github.com/jaredtao/HelloActions-Qt/releases "Release status"
[release-badge]: https://img.shields.io/github/release/jaredtao/HelloActions-Qt.svg?style=flat-square "Release status"

[download-link]: https://github.com/jaredtao/HelloActions-Qt/releases/latest "Download status"
[download-badge]: https://img.shields.io/github/downloads/jaredtao/HelloActions-Qt/total.svg?style=flat-square "Download status"

[license-link]: https://github.com/jaredtao/HelloActions-Qt/blob/master/LICENSE "LICENSE"
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg "MIT"


[issues-link]: https://github.com/jaredtao/HelloActions-Qt/issues "Issues"
[issues-badge]: https://img.shields.io/badge/github-issues-red.svg?maxAge=60 "Issues"

[wiki-links]: https://github.com/jaredtao/HelloActions-Qt/wiki "wiki"
[wiki-badge]: https://img.shields.io/badge/github-wiki-181717.svg?maxAge=60 "wiki"

## 项目进度

|Tag|功能|
|--|--|
|0.1.0|五个平台都能够自动编译|
|0.1.1|配置文件拆分|
|0.1.2|Windows可以自动打包、发布|
|0.1.3|Windows和MacOS可以同时自动打包、发布|
|0.2.0|增加Qt版本;更新打包功能|
|0.2.1|增加Qt6.2.2 desktop版本|

## 支持平台

0.2.0版本开始，增强了平台和Qt版本的支持。

以下列出通过验证并支持的编译环境：

### Windows 

Windows 宿主平台是Server 2019,支持的目标环境包括:

msvc 版本：
* Qt5.9.9-msvc2015-x86
* Qt5.9.9-msvc2017-x64
* Qt5.12.10-msvc2017-x86
* Qt5.12.10-msvc2017-x64
* Qt5.15.2-msvc2019-x86
* Qt5.15.2-msvc2019-x64
* Qt6.0.0-msvc2019-x64
* Qt6.2.2-msvc2019-x64

mingw版本：

* Qt5.9.9 mingw53_32
* Qt5.10.1 mingw53_32
* Qt5.11.3 mingw53_32
* Qt5.12.10 mingw73_32
* Qt5.12.10 mingw73_64 
* Qt5.13.2 mingw73_32
* Qt5.13.2 mingw73_64
* Qt5.14.2 mingw73_32
* Qt5.14.2 mingw73_64
* Qt5.15.2 mingw81_32
* Qt5.15.2 mingw81_64
* Qt6.0.0 mingw81_64
* Qt6.2.2 mingw90_64

(mingw版本由热心网友[Mozi](https://github.com/pzhlkj6612)提供初版，在此表示感谢!)

### MacOS

MacOS平台以MacOS 10.15 为主, 11.0存在一些问题,尚未解决,暂不公开。

Qt版本包括：

* Qt 5.9.9
* Qt 5.12.10
* Qt 5.15.2
* Qt 6.2.2
  
架构都是clang_64

### Ubuntu

Ubuntu平台的支持情况如下:

ubuntu-18.04

* Qt 5.9.9
* Qt 5.12.10
* Qt 5.15.2
  
ubuntu-20.04

* Qt 5.9.9
* Qt 5.12.10
* Qt 5.15.2
* Qt 6.2.2 
    
架构都是gcc_64

### Android

Android的宿主平台用Ubuntu 20.04，

验证通过的平台如下：

* Qt5.12.10 android x86
* Qt5.12.10 android armv7
* Qt5.12.10 android arm64_v8a
* Qt5.15.2 android (default, any-multi)
  
android 仅验证编译，暂未处理部署。

Qt6.2.2 工具包存在映射问题，暂不能用。

### IOS


ios 的宿主平台用 macos 10.15

验证通过的平台如下:

* Qt5.12.10
* Qt5.15.2

ios仅验证编译，暂未处理部署

Qt6.2.2 工具包存在映射问题，暂不能用。

### 打包脚本

目前仅提供Windows平台和MacOS平台的打包配置，其它平台使用频率不高，未做支持。

MacOS平台是简单的 macdeployqt命令调用，生成的dmg上传。

Windows平台做了'私有部署'，也就是带上全套dll(c# 及msdn中这么叫的)，

可以参考scripts/windows-publish.ps1 脚本。

调用windeployqt命令后，还会拷贝编译器的vcredist相关dll和windows kit运行时

dll，以此来保证在大部分Windows环境都能正常运行。

运行时相关的dll文件数量多，但是体积加起来并不大。

笔者经历过一些特殊的windows环境，无法通过redist.exe正确安装运行时。

所以带上全套的dll是一个万能的解决方案。

## 原理

可以参考博客文章或知乎专栏

[博客-Qt使用githubActions自动化编译](https://jaredtao.github.io/2019/11/19/Qt%E4%BD%BF%E7%94%A8github-Actions%E8%87%AA%E5%8A%A8%E5%8C%96%E7%BC%96%E8%AF%91/)

[博客-Qt使用githubActions自动化发布](https://jaredtao.github.io/2019/12/03/Qt%E4%BD%BF%E7%94%A8github-Actions%E8%87%AA%E5%8A%A8%E5%8C%96%E5%8F%91%E8%A1%8C/)

[知乎-Qt使用githubActions自动化编译](https://zhuanlan.zhihu.com/p/92733295)

[知乎-Qt使用githubActions自动化发布](https://zhuanlan.zhihu.com/p/95926317)

[知乎-Qt使用githubActions缓存优化](https://zhuanlan.zhihu.com/p/95945405)
### Qt项目的编译流程

1. 安装Qt环境

这一步用Actions模板：jurplel/install-qt-action

2. 获取项目代码

这一步用Actions官方核心模板：actions/checkout@v2

3. 执行qmake、make

这一步用自定义脚本，可以换成qbs、cmake、gn、ninja等构建工具

4. 执行test

这一步可以引入单元测试、自动化UI测试等。(暂不提供方案)

5. 执行deployment

这一步执行发布流程，可以参考博客教程

## 答疑和技术支持

QQ群：734623697

## 联系方式

***

| 作者 | 涛哥                           |
| ---- | -------------------------------- |
|开发理念 | 传承工匠精神 |
| 博客 | https://jaredtao.github.io/ |
|博客-国内镜像|https://jaredtao.gitee.io|
|知乎专栏| https://zhuanlan.zhihu.com/TaoQt |
|QQ群| 734623697(高质量群，只能交流技术、分享书籍、帮助解决实际问题）|
| 邮箱 | jared2020@163.com                |
| 微信 | xsd2410421                       |
| QQ、TIM | 759378563                      |
***

QQ(TIM)、微信二维码

<img src="https://gitee.com/jaredtao/jaredtao/raw/master/img/qq_connect.jpg?raw=true" width="30%" height="30%" /><img src="https://gitee.com/jaredtao/jaredtao/raw/master/img/weixin_connect.jpg?raw=true" width="30%" height="30%" />


****** 请放心联系我，乐于提供咨询服务，也可洽谈有偿技术支持相关事宜。

***
## 赞助
<img src="https://gitee.com/jaredtao/jaredtao/raw/master/img/weixin.jpg?raw=true" width="30%" height="30%" /><img src="https://gitee.com/jaredtao/jaredtao/raw/master/img/zhifubao.jpg?raw=true" width="30%" height="30%" />

****** 觉得分享的内容还不错, 就请作者喝杯奶茶吧~~
***
