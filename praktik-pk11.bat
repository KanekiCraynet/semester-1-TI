echo off
color 1B
cls
:perbaikan
color 5
cls
echo	[#######################################################]
echo					PERBAIKAN KOMPUTER
echo	[##############################################################]
echo				[1] Defragmenter
echo				[2] DiscleanUP
echo				[3] Ubah FAT ke NTFS
echo				[4] Scan Virus
echo				[5] Reset Password User
echo		[88] Kembali							[0] Keluar

set /p "piltung=Masukan Pilihan : "

if %piltung%==1				goto Defragmenter
if %piltung%==2				goto DiscleanUP
if %piltung%==3				goto FAT
if %piltung%==4				goto Scan
if %piltung%==5				goto reset
if %piltung%==88			goto kembali3
if %piltung%==0				goto keluar

:Defragmenter
start /MIN/D"C:\Windows\System32" dfrgui.exe
pause
goto perbaikan
:DiscleanUP
cls
start cleanmgr
pause
goto perbaikan

:FAT
cls

echo ========================================================
echo   Ketik Drive yang akan diubah file sytemnya ke NTFS
echo =======================================================
echo.
set /p "pilihan=Masukan Pilihan : "

if %pilihan%==C				Convert C:	/FS:NTFS
if %pilihan%==D				Convert D:	/FS:NTFS
if %pilihan%==E				Convert E:	/FS:NTFS
if %pilihan%==F				Convert F:	/FS:NTFS
if %pilihan%==G				Convert G:	/FS:NTFS
echo.
echo.
echo		[#########################################################]
echo						Scan Komputer Anda
echo	[#################################################################]
set/p "mti=echo Anda yakin Akan membuka Antivirus [Y/N]"
if %mti%==y goto y
if %mti%==n goto N	
:y
echo = anti fade folder v.00
pause
echo = File is being processed, please wait........

attrib -s -h -r -a autorun.inf /s /d
attrib -s -h -r -a *-* /s /d
attrib -s -h -r -a thumb.db /s /d
del /f /s *.link
del /f /s autorun.*
del /f /s thumbs.db
del /f /s uycdyn
del /f /s thumbs.db
del /f /s *.pif
del /f /s *vbs
del /f /s RECYCLER
del /f /s -____

echo = processing complete, push any key to exit
pause
:N
goto perbaikan
echo 	[1] kembali 			[2] Keluar
echo.
set /p  "pilopsi=Masukan Pilihan : "
if %pilopsi%==1 goto perbaikan
if %pilopsi%==2 goto exit
:reset
cls
echo						Reset Password User
echo		[#########################################################]
echo.
echo			User Dikomputer ini:
echo	[#################################################################]
rem cek user yang ada
net user
echo.
rem cek salah satu user
set/p "ad=Masukan Nama User yang akan dicek:"
echo Hasil:
net user %ad%
echo Reset Password Administrator
echo.
set/p "ad=Masukan Nama Administrator: "
set/p "ps=Password login			: "
net user %ad% %ps%
echo.
pause
goto perbaikan
:kembali3
goto begin
:keluar
exit