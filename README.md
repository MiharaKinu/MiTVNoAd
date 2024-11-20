# MiTVNoAd 小米电视去广告

![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)


MiTVNoAd 是一个用于去除小米电视广告的工具。通过使用此工具，你可以在小米电视上享受更清爽的使用体验。

## 文件说明

- `db.bat`：Windows系统下的执行脚本
- `db.sh`：macOS或Linux系统下的执行脚本
- `launcher148.apk`：去广告的当贝桌面安装包

## 准备

1. 打开小米电视ADB调试：打开`设置->关于->产品型号`，选中`产品型号`，然后按确定键7次，开发者模式开启   

2. `设置->账号与安全`，adb调试选择`打开`

3. `设置->网络设置`，打开连接的网络，记住自己电视的IP地址(IPV4)；

## 安装

Windows, 双击 `db.bat` 即可执行，输入上一步得到的电视IP

### macOS或Linux系统


首先，需要安装ADB，打开终端，执行以下命令：

```sh
# macOS执行下面
brew install android-platform-tools 

# Linux执行下面
sudo apt-get update
sudo apt-get install android-tools-adb
```

安装完成后回到此目录，继续执行：

```sh
# 设置可执行权限
chmod +x db.sh
# 运行脚本
./db.sh
```


## FAQ

#### 如何恢复出厂设置

  关电视，拔电源，等十秒后，然后插电源，同时按住遥控器主页键和返回键不放，开电视，然后进入recovery，清除数据后重启，就恢复原厂设置了

#### HDMI怎么切换？
  需要进入系统设置中，手动切换。



## 许可证

本项目采用MIT许可证

