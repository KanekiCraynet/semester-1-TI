@echo off
title Setting My Computer
:begin
set /p password=Masukkan Password : 
if %password% == rahasia (
  cls
echo Selamat Datang di Halaman Utama UMKABA
) else (
  goto setting
)

:setting
color b5
cls
echo ========================================================
echo 		SETTING COMPUTER
echo =======================================================
echo		[1] Setting Keyboard
echo		[2] Setting Lenguage
echo		[3] Setting Date
echo		[4] Add User
echo		[5] Sound Control
echo		[6] Open Startup
echo		[7] chrome
echo		[8] cmd
echo		[9] PowerPoint
echo		[10] Lexar(FD)
echo		[88] Kembali			[0] Keluar

set /p "pilihanmenu=Masukan Pilihan menu:"
if %pilihanmenu%==1			goto Keyboard
if %pilihanmenu%==2			goto Lenguage
if %pilihanmenu%==3			goto Date
if %pilihanmenu%==4			goto User
if %pilihanmenu%==5			goto Sound
if %pilihanmenu%==6			goto Startup
if %pilihanmenu%==7			goto chrome
if %pilihanmenu%==8			goto cmd
if %pilihanmenu%==9			goto PowerPoint
if %pilihanmenu%==10			goto Lexar(FD)
if %pilihanmenu%==88		goto Kembali
if %pilihanmenu%==0			goto Keluar

:Keyboard
cls
start control Keyboard
goto setting
pause
:Lenguage
cls
start intl.cpl
goto setting
pause
:Date
cls
start timedate.cpl
goto setting
pause
:User
cls
start Netplwiz.exe
goto setting
pause
:Sound
cls
start SndVol.exe
goto setting
pause
:Startup
start msconfig
goto setting
pause
:chrome
cls
start chrome.exe
goto setting
pause
:cmd
cls
start cmd.exe
goto setting
pause
:PowerPoint
cls
start C:\Users\USER\Desktop\PowerPoint
goto setting
pause
:Lexar(FD)
cls
start F:\
goto setting
pause
:back
