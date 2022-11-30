@echo off
:begin

set /p password=Masukkan Password : 
if %password% == rahasia (
  cls
echo Selamat Datang di Halaman Utama UMKABA
) else (
  goto begin
)

pause
