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









echo.
echo.
echo.
echo.
echo\ %_$e%[1;97m
echo.
echo.
echo.
echo.
@ECHO OFF
echo Start Scrcpy With The Following Options:
echo.
echo\ %_$e%[1;92m1. USB Connection With Android Main Screen [Video/Audio:Enabled]
echo.
echo\ %_$e%[1;93m2. USB Connection With Android Virtual Display [Video/Audio:Enabled]
echo.
echo\ %_$e%[1;94m3. USB Connection With Android Back Camera  [Video/Audio:Enabled]
echo.
echo\ %_$e%[1;95m4. Wireless Connection With Android Main Screen [Video/Audio:Enabled]
echo.
echo\ %_$e%[1;96m5. Wireless Connection With Android Back Camera  [Video/Audio:Enabled]
ECHO.
echo\ %_$e%[1;97m
CHOICE /C 12345 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 GOTO WirelessBackCameraOnly
IF ERRORLEVEL 4 GOTO WirelessMainScreen
IF ERRORLEVEL 3 GOTO USBBackCameraOnly
IF ERRORLEVEL 2 GOTO USBVirtualDisplay
IF ERRORLEVEL 1 GOTO USBMainScreen










:USBMainScreen
cls
CALL USBMainScreen.bat
exit














:USBVirtualDisplay
cls
CALL USBVirtualDisplay.bat
exit











:USBBackCameraOnly
cls
CALL USBVirtualDisplay.bat
exit






:WirelessMainScreen
ECHO Logoff (put your log off code here)
pause
GOTO End















:WirelessBackCameraOnly
ECHO Switch User (put your switch user code here)
pause
GOTO End
















:End
cls
adb shell settings put global overlay_display_devices \"\"
cls
echo\ %_$e%[1;93m*****************************************************
echo\ %_$e%[1;93m*  Scrcpy Stopped / You Can Now Close This Window  *
echo\ %_$e%[1;93m*****************************************************
pause
