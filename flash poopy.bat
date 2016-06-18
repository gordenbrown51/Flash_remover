::	kill-w10-flash.bat
::	original by CHEF-KOCH

@echo off
echo Batch file to kill Windows 8 - 10 integrated Adobe Flash
echo Tested on Windows 8 x64 Pro. & Windows 10 x64 LTSB N
echo.
echo If you know what you're doing:
pause

regsvr32 -u C:\Windows\SysWOW64\Macromed\Flash\Flash.ocx
takeown /f C:\Windows\SysWOW64\Macromed\*  /r /d Y
icacls C:\Windows\SysWOW64\Macromed\* /t /c /reset
icacls C:\Windows\SysWOW64\Macromed\* /t /c /inheritance:r
icacls C:\Windows\SysWOW64\Macromed\* /t /grant:r %username%:f
rmdir /s /q C:\Windows\SysWOW64\Macromed

regsvr32 -u C:\Windows\SysWOW64\Macromed\Flash\activex.vch
takeown /f C:\Windows\SysWOW64\Macromed\*  /r /d Y
icacls C:\Windows\SysWOW64\Macromed\* /t /c /reset
icacls C:\Windows\SysWOW64\Macromed\* /t /c /inheritance:r
icacls C:\Windows\SysWOW64\Macromed\* /t /grant:r %username%:f
rmdir /s /q C:\Windows\SysWOW64\Macromed

regsvr32 -u C:\Windows\SysWOW64\Macromed\Flash\FlashUtil_ActiveX.dll
takeown /f C:\Windows\SysWOW64\Macromed\*  /r /d Y
icacls C:\Windows\SysWOW64\Macromed\* /t /c /reset
icacls C:\Windows\SysWOW64\Macromed\* /t /c /inheritance:r
icacls C:\Windows\SysWOW64\Macromed\* /t /grant:r %username%:f
rmdir /s /q C:\Windows\SysWOW64\Macromed

regsvr32 -u C:\Windows\SysWOW64\Macromed\Flash\FlashUtil_ActiveX.exe
takeown /f C:\Windows\SysWOW64\Macromed\*  /r /d Y
icacls C:\Windows\SysWOW64\Macromed\* /t /c /reset
icacls C:\Windows\SysWOW64\Macromed\* /t /c /inheritance:r
icacls C:\Windows\SysWOW64\Macromed\* /t /grant:r %username%:f
rmdir /s /q C:\Windows\SysWOW64\Macromed

regsvr32 -u C:\Windows\System32\Macromed\Flash\Flash.ocx
takeown /f C:\Windows\System32\Macromed\*  /r /d Y
icacls C:\Windows\System32\Macromed\* /t /c /reset
icacls C:\Windows\System32\Macromed\* /t /c /inheritance:r
icacls C:\Windows\System32\Macromed\* /t /grant:r %username%:f
rmdir /s /q C:\Windows\System32\Macromed

takeown /f C:\Windows\WinSXS\Manifests\*adobe* /r /d Y
icacls C:\Windows\WinSXS\Manifests\*adobe* /t /c /reset
icacls C:\Windows\WinSXS\Manifests\*adobe* /t /c /inheritance:r
icacls C:\Windows\WinSXS\Manifests\*adobe* /t /grant:r %username%:f
del C:\Windows\WinSXS\Manifests\*adobe* /f /q

takeown /f C:\Windows\WinSXS\FileMaps\*flash* /r /d Y
icacls C:\Windows\WinSXS\FileMaps\*flash* /t /c /reset
icacls C:\Windows\WinSXS\FileMaps\*flash* /t /c /inheritance:r
icacls C:\Windows\WinSXS\FileMaps\*flash* /t /grant:r %username%:f
del C:\Windows\WinSXS\FileMaps\*flash* /f /q

takeown /f C:\Windows\WinSXS\*adobe* /r /d Y
icacls C:\Windows\WinSXS\*adobe* /t /c /reset
icacls C:\Windows\WinSXS\*adobe* /t /c /inheritance:r
icacls C:\Windows\WinSXS\*adobe* /t /grant:r %username%:f
for /f "tokens=*" %%f in (
	'dir /b C:\Windows\WinSXS\*adobe*flash*'
	) do (
	rd /s /q C:\Windows\WinSXS\%%f
	)

echo.
echo Done!
echo Adobe Flash killed!
echo.
pause