@echo off
cd /d "%~dp0"

echo ���������IP��ַ
set /p ip=��������ӵ�IP:

echo �������ӣ����Ժ�
set matchStr=connected
:connect
for /f "tokens=*" %%i in ('%~dp0adb connect %ip%') do @set  result=%%i

echo %result% | findstr %matchStr% >nul && (echo ���ӳɹ�) || (echo ����ʧ�ܣ���������
  (goto connect))

set  installResult=Success

:installDangbei

echo ��������3.24�ƽ�氲װ�У����Ժ�
for /f "tokens=*" %%i in ('%~dp0adb install launcher148.apk') do @set  installMessage=%%i
echo in=%installMessage%

echo %installMessage% | findstr %installResult% >nul && (echo ��װ�ɹ�) || (echo ��װʧ�ܣ���������
  (goto installDangbei))

echo ���ھ����У����ĵȴ�������

ECHO  ɾ��-������1-
adb shell pm uninstall --user 0 com.xiaomi.mitv.upgrade
ECHO  ɾ��-������1-��ɣ�
ECHO.
ECHO  ɾ��-С���ʺ�-
adb shell pm uninstall --user 0 com.xiaomi.account
ECHO  ɾ��-С���ʺ�-��ɣ�
ECHO.
ECHO  ɾ��-droidlogicϵͳ-
adb shell pm uninstall --user 0 com.droidlogic
ECHO  ɾ��-droidlogicϵͳ-��ɣ�
ECHO.
ECHO  ɾ��-С��֧��-
adb shell pm uninstall --user 0 com.xiaomi.mitv.payment
ECHO  ɾ��-С��֧��-��ɣ�
ECHO.
ECHO  ɾ��-����֧��-
adb shell pm uninstall --user 0 com.xiaomi.mitv.pay
ECHO  ɾ��-����֧��-��ɣ�
ECHO.
ECHO  ɾ��-Ӧ�ø���-
adb shell pm uninstall --user 0 com.xiaomi.tv.appupgrade
ECHO  ɾ��-Ӧ�ø���-��ɣ�
ECHO.
ECHO  ɾ��-VPN-
adb shell pm uninstall --user 0 com.android.vpndialogs
ECHO  ɾ��-VPN-��ɣ�
ECHO.
ECHO  ɾ�� -��������-
adb shell pm uninstall --user 0 com.xiaomi.mitv.tvpush.tvpushservice
ECHO  ɾ��-��������-��ɣ�
ECHO.
ECHO  ɾ��-С���ʺ���Ȩ-
adb shell pm uninstall --user 0 com.xiaomi.account.auth
ECHO  ɾ��-С���ʺ���Ȩ-��ɣ�
ECHO.
ECHO  ɾ��-ͳ��-
adb shell pm uninstall --user 0 com.xiaomi.statistic
ECHO  ɾ��-ͳ��-��ɣ�
ECHO.
ECHO  ɾ��-С��Ǯ��-
adb shell pm uninstall --user 0 com.mipay.wallet.tv
ECHO  ɾ��-С��Ǯ��-��ɣ�
ECHO.
ECHO  ɾ��-�׼�-
adb shell pm uninstall --user 0 com.xiaomi.smarthome.tv
ECHO  ɾ��-�׼�-��ɣ�
ECHO.
ECHO  ɾ��-Ӧ���̵�-
adb shell pm uninstall --user 0 com.xiaomi.mitv.appstore
ECHO  ɾ��-Ӧ���̵�-��ɣ�
ECHO.
ECHO  ɾ��-����ǰ��-
adb shell pm uninstall --user 0 com.mi.umifrontend
ECHO  ɾ��-����ǰ��-��ɣ�
ECHO.
adb shell pm uninstall --user 0 com.android.proxyhandler
ECHO  ɾ��-����-��ɣ�
ECHO.
ECHO  ɾ��-���Ӧ��-
adb shell pm uninstall --user 0 com.xiaomi.mitv.advertise
ECHO  ɾ��-���Ӧ��-��ɣ�
ECHO.
ECHO  ɾ��-һ�廯λ����Ϣ-
adb shell pm uninstall --user 0 com.android.location.fused
ECHO  ɾ��-һ�廯λ����Ϣ-��ɣ�
ECHO.
ECHO  ɾ��-¼��-
adb shell pm uninstall --user 0 com.xiaomi.screenrecorder
ECHO  ɾ��-¼��-��ɣ�
ECHO.
ECHO  ɾ��-ȥ���������-
adb shell pm uninstall --user 0 com.miui.systemAdSolution
ECHO  ɾ��-ȥ���������-��ɣ�
ECHO  ɾ��-С������-
adb shell pm uninstall --user 0 com.mitv.tvhome
ECHO. ɾ��-С������-��ɣ� 
ECHO.
ECHO  ɾ�� <���>
adb shell pm uninstall --user 0 com.mitv.gallery
ECHO  ɾ��</���>��ɣ�
ECHO.

ECHO  ɾ��-�̳�-
adb shell pm uninstall --user 0 com.xiaomi.mitv.shop
ECHO  ɾ��-�̳�-��ɣ�
ECHO.

ECHO  ɾ��-ͷ����Ƶ-
adb shell pm uninstall --user 0 com.duokan.airkan.tvbox
adb shell pm uninstall --user 0 com.duokan.videodaily
ECHO  ɾ��-ͷ����Ƶ-��ɣ�
ECHO.

ECHO  ɾ��-�û��ֲ�-
adb shell pm uninstall --user 0 com.xiaomi.mitv.handbook
ECHO  ɾ��-�û��ֲ�-��ɣ�
ECHO.

echo "����ɹ������������ӣ�"

@pause