@echo off
copy icon1.png DontTouch\ctpk_24x24icon\
copy icon2.png DontTouch\ctpk_48x48icon\
copy 256x128.png DontTouch\cbmd_bannerImage\
echo.
cd %~dp0\DontTouch\cbmd_bannerImage\
call convert.bat
cd %~dp0
echo.
cd %~dp0\DontTouch\ctpk_24x24icon\
call convert.bat
cd %~dp0
echo.
cd %~dp0\DontTouch\ctpk_48x48icon\
call convert.bat
cd %~dp0
echo.
cd %~dp0\DontTouch
call DontTouch.py
cd %~dp0
echo.
move DontTouch\icon.bin icon.bin
move DontTouch\banner.bin banner.bin
del 256x128.png
del icon1.png
del icon2.png
del banner.bin
exit