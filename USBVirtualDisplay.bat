set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cls
@echo off                                                
for /f skip^=4 %%e in ('echo;prompt $E^|cmd.exe')do set "_$E=%%~e"
title <nul & title %_$E% Scrcpy v2.7 - %_$E% Display And Control Android Device & mode con lines=16 cols=104
cls
    echo\ %_$e%[1;36m------------------%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mScrcpy - ver 2.7%_$e%[1;34m & echo\
    echo\ %_$e%[1;36m------------------%_$e%[1;34m & echo\
    echo.
    echo\ %_$e%[1;36mThis application mirrors Android devices (video and audio) connected via USB or over TCP/IP,%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mand allows to control the device with the keyboard and the mouse of the computer.%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mIt does not require any root access. It works on Linux, Windows and macOS.%_$e%[1;34m & echo\
    echo.
    echo\ %_$e%[1;36m------------------------------------------------------------%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mWritten by Genymobile - https://github.com/Genymobile/scrcpy%_$e%[1;34m & echo\
    echo\ %_$e%[1;36m------------------------------------------------------------%_$e%[1;34m & echo\
echo.
echo.
timeout /t 02 | echo\
echo.
    echo\ %_$e%[1;91m******************************************************************************
	echo\ %_$e%[1;91m**                                                                          **
    echo\ %_$e%[1;91m**               Please Make Sure Developer Mode Is Enabled                 **
	echo\ %_$e%[1;91m**         And Make Sure USB Debugging And Wireless Debugging Is Enabled    **
	echo\ %_$e%[1;91m**                                                                          **
	echo\ %_$e%[1;91m******************************************************************************
	echo\ %_$e%[1;91m**                                                                          **
	echo\ %_$e%[1;91m**              How To Enable USB Debugging On Android Guide                **
	echo\ %_$e%[1;91m**                       https://youtu.be/Z-jkCKARGpM                       **
	echo\ %_$e%[1;91m**                                                                          **
	echo\ %_$e%[1;91m******************************************************************************
echo.
timeout /t 02 | echo\
echo\ %_$e%[1;93mStarting USB Connection With Android Virtual Display
timeout /t 02 | echo\
echo.
echo\ %_$e%[1;91mPlease Plug In Your Android Device With The USB Cable Right Now !
echo.
pause
cls
@echo off
echo\ %_$e%[1;93m****************************************************
echo\ %_$e%[1;93m* USB Connection With Android Virtual Display Mode *
echo\ %_$e%[1;93m****************************************************
echo.
echo\ %_$e%[1;93mDisable All Virtual Displays On Android Device:
adb shell settings put global overlay_display_devices \"\"
echo\ %_$e%[1;92mDone !
echo.
echo\ %_$e%[1;93mEnable 3840x2160 Virtual Display On Android Device:
adb shell settings put global overlay_display_devices 3840x2160/480
echo\ %_$e%[1;92mDone !
echo.
echo.
echo.
echo\ %_$e%[1;97m------------------
echo\ %_$e%[1;97mPick Display ID:
echo\ %_$e%[1;97m------------------
echo.
echo\ %_$e%[1;93m
scrcpy --display-id=99
echo.
echo\ %_$e%[1;97mEnter Display ID:
set /p input=
echo.
echo\ %_$e%[1;97mDisplay ID: %input%
echo.
@echo off                                                
for /f skip^=4 %%e in ('echo;prompt $E^|cmd.exe')do set "_$E=%%~e"
title <nul & title %_$E% Scrcpy v2.7 - %_$E% Display And Control Android Device & mode con lines=16 cols=104
cls
    echo\ %_$e%[1;36m------------------%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mScrcpy - ver 2.7%_$e%[1;34m & echo\
    echo\ %_$e%[1;36m------------------%_$e%[1;34m & echo\
    echo.
    echo\ %_$e%[1;36mThis application mirrors Android devices (video and audio) connected via USB or over TCP/IP,%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mand allows to control the device with the keyboard and the mouse of the computer.%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mIt does not require any root access. It works on Linux, Windows and macOS.%_$e%[1;34m & echo\
    echo.
    echo\ %_$e%[1;36m------------------------------------------------------------%_$e%[1;34m & echo\
    echo\ %_$e%[1;36mWritten by Genymobile - https://github.com/Genymobile/scrcpy%_$e%[1;34m & echo\
    echo\ %_$e%[1;36m------------------------------------------------------------%_$e%[1;34m & echo\
echo.
echo.
timeout /t 02 | echo\
echo.
echo.
echo ------------------
echo Loading Scrcpy !
echo ------------------
echo.
echo.
echo ------------------
echo ** Close Android Window First To Exit / Hit ALT And F4 To Close Android Window **
echo ------------------
echo.
echo ------------------
echo ** Hit ALT And F For Full Screen Mode **
echo ------------------
echo.
echo.
scrcpy --display-id=%input% --select-usb --audio-codec=flac --audio-codec-options=flac-compression-level=8 --fullscreen --window-width=2560 --window-height=1440 --gamepad=uhid --video-codec=h265 --max-size=2560 --max-fps=120 --turn-screen-off --stay-awake & echo running 
cls
adb shell settings put global overlay_display_devices \"\"
echo.
GOTO End

:End
cls
adb shell settings put global overlay_display_devices \"\"
cls
echo\ %_$e%[1;93m*****************************************************
echo\ %_$e%[1;93m*  Scrcpy Stopped / You Can Now Close This Window  *
echo\ %_$e%[1;93m*****************************************************
pause
exit