@echo off
cd /d "%~dp0"

echo 请输入电视IP地址
set /p ip=请输入电视的IP:

echo 正在连接，请稍后
set matchStr=connected
:connect
for /f "tokens=*" %%i in ('%~dp0adb connect %ip%') do @set  result=%%i

echo %result% | findstr %matchStr% >nul && (echo 连接成功) || (echo 连接失败，正在重试
  (goto connect))

set  installResult=Success

:installDangbei

echo 当贝桌面3.24破解版安装中，请稍后
for /f "tokens=*" %%i in ('%~dp0adb install launcher148.apk') do @set  installMessage=%%i
echo in=%installMessage%

echo %installMessage% | findstr %installResult% >nul && (echo 安装成功) || (echo 安装失败，正在重试
  (goto installDangbei))

echo 正在精简中，耐心等待。。。

ECHO  删除-广告程序1-
adb shell pm uninstall --user 0 com.xiaomi.mitv.upgrade
ECHO  删除-广告程序1-完成！
ECHO.
ECHO  删除-小米帐号-
adb shell pm uninstall --user 0 com.xiaomi.account
ECHO  删除-小米帐号-完成！
ECHO.
ECHO  删除-droidlogic系统-
adb shell pm uninstall --user 0 com.droidlogic
ECHO  删除-droidlogic系统-完成！
ECHO.
ECHO  删除-小米支付-
adb shell pm uninstall --user 0 com.xiaomi.mitv.payment
ECHO  删除-小米支付-完成！
ECHO.
ECHO  删除-电视支付-
adb shell pm uninstall --user 0 com.xiaomi.mitv.pay
ECHO  删除-电视支付-完成！
ECHO.
ECHO  删除-应用更新-
adb shell pm uninstall --user 0 com.xiaomi.tv.appupgrade
ECHO  删除-应用更新-完成！
ECHO.
ECHO  删除-VPN-
adb shell pm uninstall --user 0 com.android.vpndialogs
ECHO  删除-VPN-完成！
ECHO.
ECHO  删除 -电视推送-
adb shell pm uninstall --user 0 com.xiaomi.mitv.tvpush.tvpushservice
ECHO  删除-电视推送-完成！
ECHO.
ECHO  删除-小米帐号授权-
adb shell pm uninstall --user 0 com.xiaomi.account.auth
ECHO  删除-小米帐号授权-完成！
ECHO.
ECHO  删除-统计-
adb shell pm uninstall --user 0 com.xiaomi.statistic
ECHO  删除-统计-完成！
ECHO.
ECHO  删除-小米钱包-
adb shell pm uninstall --user 0 com.mipay.wallet.tv
ECHO  删除-小米钱包-完成！
ECHO.
ECHO  删除-米家-
adb shell pm uninstall --user 0 com.xiaomi.smarthome.tv
ECHO  删除-米家-完成！
ECHO.
ECHO  删除-应用商店-
adb shell pm uninstall --user 0 com.xiaomi.mitv.appstore
ECHO  删除-应用商店-完成！
ECHO.
ECHO  删除-音响前端-
adb shell pm uninstall --user 0 com.mi.umifrontend
ECHO  删除-音响前端-完成！
ECHO.
adb shell pm uninstall --user 0 com.android.proxyhandler
ECHO  删除-代理-完成！
ECHO.
ECHO  删除-广告应用-
adb shell pm uninstall --user 0 com.xiaomi.mitv.advertise
ECHO  删除-广告应用-完成！
ECHO.
ECHO  删除-一体化位置信息-
adb shell pm uninstall --user 0 com.android.location.fused
ECHO  删除-一体化位置信息-完成！
ECHO.
ECHO  删除-录屏-
adb shell pm uninstall --user 0 com.xiaomi.screenrecorder
ECHO  删除-录屏-完成！
ECHO.
ECHO  删除-去除开机广告-
adb shell pm uninstall --user 0 com.miui.systemAdSolution
ECHO  删除-去除开机广告-完成！
ECHO  删除-小米桌面-
adb shell pm uninstall --user 0 com.mitv.tvhome
ECHO. 删除-小米桌面-完成！ 
ECHO.
ECHO  删除 <相册>
adb shell pm uninstall --user 0 com.mitv.gallery
ECHO  删除</相册>完成！
ECHO.

ECHO  删除-商城-
adb shell pm uninstall --user 0 com.xiaomi.mitv.shop
ECHO  删除-商城-完成！
ECHO.

ECHO  删除-头条视频-
adb shell pm uninstall --user 0 com.duokan.airkan.tvbox
adb shell pm uninstall --user 0 com.duokan.videodaily
ECHO  删除-头条视频-完成！
ECHO.

ECHO  删除-用户手册-
adb shell pm uninstall --user 0 com.xiaomi.mitv.handbook
ECHO  删除-用户手册-完成！
ECHO.

echo "精简成功，请重启电视！"

@pause