#!/bin/bash

cd "$(dirname "$0")"

echo ""
read -p "请输入电视的IP地址: " ip

echo "正在连接，请稍后"
matchStr="connected"
result=""

while [[ "$result" != *"$matchStr"* ]]; do
    result=$(adb connect "$ip")
    if [[ "$result" == *"$matchStr"* ]]; then
        echo "连接成功"
    else
        echo "连接失败，正在重试"
    fi
done

installResult="Success"
installMessage=""

while [[ "$installMessage" != *"$installResult"* ]]; do
    echo "当贝桌面3.24破解版安装中，请稍后"
    installMessage=$(adb install launcher148.apk)
    echo "in=$installMessage"
    if [[ "$installMessage" == *"$installResult"* ]]; then
        echo "安装成功"
    else
        echo "安装失败，正在重试"
    fi
done

echo "正在精简中，耐心等待。。。"

echo "删除-广告程序1-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.upgrade
echo "删除-广告程序1-完成！"
echo

echo "删除-小米帐号-"
adb shell pm uninstall --user 0 com.xiaomi.account
echo "删除-小米帐号-完成！"
echo

echo "删除-droidlogic系统-"
adb shell pm uninstall --user 0 com.droidlogic
echo "删除-droidlogic系统-完成！"
echo

echo "删除-小米支付-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.payment
echo "删除-小米支付-完成！"
echo

echo "删除-电视支付-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.pay
echo "删除-电视支付-完成！"
echo

echo "删除-应用更新-"
adb shell pm uninstall --user 0 com.xiaomi.tv.appupgrade
echo "删除-应用更新-完成！"
echo

echo "删除-VPN-"
adb shell pm uninstall --user 0 com.android.vpndialogs
echo "删除-VPN-完成！"
echo

echo "删除-电视推送-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.tvpush.tvpushservice
echo "删除-电视推送-完成！"
echo

echo "删除-小米帐号授权-"
adb shell pm uninstall --user 0 com.xiaomi.account.auth
echo "删除-小米帐号授权-完成！"
echo

echo "删除-统计-"
adb shell pm uninstall --user 0 com.xiaomi.statistic
echo "删除-统计-完成！"
echo

echo "删除-小米钱包-"
adb shell pm uninstall --user 0 com.mipay.wallet.tv
echo "删除-小米钱包-完成！"
echo

echo "删除-米家-"
adb shell pm uninstall --user 0 com.xiaomi.smarthome.tv
echo "删除-米家-完成！"
echo

echo "删除-应用商店-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.appstore
echo "删除-应用商店-完成！"
echo

echo "删除-音响前端-"
adb shell pm uninstall --user 0 com.mi.umifrontend
echo "删除-音响前端-完成！"
echo

echo "删除-代理-"
adb shell pm uninstall --user 0 com.android.proxyhandler
echo "删除-代理-完成！"
echo

echo "删除-广告应用-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.advertise
echo "删除-广告应用-完成！"
echo

echo "删除-一体化位置信息-"
adb shell pm uninstall --user 0 com.android.location.fused
echo "删除-一体化位置信息-完成！"
echo

echo "删除-录屏-"
adb shell pm uninstall --user 0 com.xiaomi.screenrecorder
echo "删除-录屏-完成！"
echo

echo "删除-去除开机广告-"
adb shell pm uninstall --user 0 com.miui.systemAdSolution
echo "删除-去除开机广告-完成！"
echo

echo "删除-小米桌面-"
adb shell pm uninstall --user 0 com.mitv.tvhome
echo "删除-小米桌面-完成！"
echo

echo "删除-相册-"
adb shell pm uninstall --user 0 com.mitv.gallery
echo "删除-相册-完成！"
echo

echo "删除-商城-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.shop
echo "删除-商城-完成！"
echo

echo "删除-头条视频-"
adb shell pm uninstall --user 0 com.duokan.airkan.tvbox
adb shell pm uninstall --user 0 com.duokan.videodaily
echo "删除-头条视频-完成！"
echo

echo "删除-用户手册-"
adb shell pm uninstall --user 0 com.xiaomi.mitv.handbook
echo "删除-用户手册-完成！"
echo

echo "精简成功，请重启电视！"
