@echo off
set dir=src\assets\bin\Data\Managed\
set out=Dll\
set ver=4.6
copy /y %out%*.dll %dir%*.dll
copy /y %ver%\cryptMono\debug\libmono.so src\lib\armeabi-v7a\libmono.so
::@pause