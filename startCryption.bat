@echo off
cls
echo 1.Unity4.5 debug
echo 2.Unity4.5 release
echo 3.Unity4.6 debug
echo 4.Unity4.6 release
echo 5.�˳�(end)
ECHO.
set /p ans=                   (��ȡһ�����룬���������ȡһ������)
if %ans%==1 goto a
if %ans%==2 goto b
if %ans%==3 goto c
if %ans%==4 goto d
if %ans%==5 goto end
:a                            (��ǩ)
ECHO.
echo ��ʼ���apk
call decomplier.bat
echo ��ʼ����DLL
call CryptionDll.cmd
echo ��ʼ�滻libmono
call Unity4.5ReplaceCryptionDebugMono.cmd
echo ���´��
call recomplier.bat
echo ����ǩ��
call sign_netease.cmd
echo apk����������
goto end
:b                            (��ǩ)
ECHO.
echo ��ʼ���apk
call decomplier.bat
echo ��ʼ����DLL
call CryptionDll.cmd
echo ��ʼ�滻libmono
call Unity4.5ReplaceCryptionReleaseMono.cmd
echo ���´��
call recomplier.bat
echo ����ǩ��
call sign_netease.cmd
echo apk����������
goto end
:c                            (��ǩ)
ECHO.
echo ��ʼ���apk
call decomplier.bat
echo ��ʼ����DLL
call CryptionDll.cmd
echo ��ʼ�滻libmono
call Unity4.6ReplaceCryptionDebugMono.cmd
echo ���´��
call recomplier.bat
echo ����ǩ��
call sign_netease.cmd
echo apk����������
goto end
:d                            (��ǩ)
ECHO.
echo ��ʼ���apk
call decomplier.bat
echo ��ʼ����DLL
call CryptionDll.cmd
echo ��ʼ�滻libmono
call Unity4.6ReplaceCryptionReleaseMono.cmd
echo ���´��
call recomplier.bat
echo ����ǩ��
call sign_netease.cmd
echo apk����������
goto end
:end                            (��ǩ)
ECHO.
echo �˳� ......
pause