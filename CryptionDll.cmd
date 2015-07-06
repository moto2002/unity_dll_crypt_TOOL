@echo off
rmdir /s/q tmp
mkdir tmp 
rmdir /s/q Dll
mkdir Dll
set tmp=tmp\
set out=Dll\
set dir=src\assets\bin\Data\Managed\
copy /y %dir%*.dll  tmp
for %%i in (Boo.Lang.dll,Mono.Security.dll,mscorlib.dll,System.Core.dll,System.dll,System.Runtime.Serialization.dll,System.ServiceModel.dll,System.ServiceModel.Web.dll,System.Xml.dll) do (
	rm -f %tmp%%%i
	echo remove:%%i
)
for /f %%i in ('dir "tmp\*.dll" /s /b') do (
	crytion.exe  %%i %out%%%~nxi
	::for /f "delims=" %%b in ("%%i\..") do echo,%%~fb
	echo º”√‹≥…π¶:%%~nxi
)