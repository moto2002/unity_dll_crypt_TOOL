@echo off
cls
echo 1.Unity4.5 debug
echo 2.Unity4.5 release
echo 3.Unity4.6 debug
echo 4.Unity4.6 release
echo 5.退出(end)
ECHO.
set /p ans=                   (获取一行输入，在这里仅获取一个数字)
if %ans%==1 goto a
if %ans%==2 goto b
if %ans%==3 goto c
if %ans%==4 goto d
if %ans%==5 goto end
:a                            (标签)
ECHO.
echo 开始解包apk
call decomplier.bat
echo 开始加密DLL
call CryptionDll.cmd
echo 开始替换libmono
call Unity4.5ReplaceCryptionDebugMono.cmd
echo 重新打包
call recomplier.bat
echo 重新签名
call sign_netease.cmd
echo apk代码加密完成
goto end
:b                            (标签)
ECHO.
echo 开始解包apk
call decomplier.bat
echo 开始加密DLL
call CryptionDll.cmd
echo 开始替换libmono
call Unity4.5ReplaceCryptionReleaseMono.cmd
echo 重新打包
call recomplier.bat
echo 重新签名
call sign_netease.cmd
echo apk代码加密完成
goto end
:c                            (标签)
ECHO.
echo 开始解包apk
call decomplier.bat
echo 开始加密DLL
call CryptionDll.cmd
echo 开始替换libmono
call Unity4.6ReplaceCryptionDebugMono.cmd
echo 重新打包
call recomplier.bat
echo 重新签名
call sign_netease.cmd
echo apk代码加密完成
goto end
:d                            (标签)
ECHO.
echo 开始解包apk
call decomplier.bat
echo 开始加密DLL
call CryptionDll.cmd
echo 开始替换libmono
call Unity4.6ReplaceCryptionReleaseMono.cmd
echo 重新打包
call recomplier.bat
echo 重新签名
call sign_netease.cmd
echo apk代码加密完成
goto end
:end                            (标签)
ECHO.
echo 退出 ......
pause