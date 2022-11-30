@echo off
Title Latihan 7 Inputan Persegi Panjang

rem Variabel dan Inputan
set /p p= 	Masukkan Panjang Bangunan	:
set /p l= 	Masukkan Lebar Bangunan		:

set /a luas=p*l

if %luas% GEQ 500 (
	set grade=Kategori Besar
) else if %luas% GEQ 100 (
	set grade=Kategori Sedang
) else (
	set grade=Kategori Kecil
)

cls
rem output
echo -------------------------------------
echo Data Luas Bagunan
echo -------------------------------------
echo Panjang Bangunan	: %p%
echo Lebar Bangunan		: %l%
echo Luas Bangunan		: %luas%
echo Ketegori			: %grade%
echo -------------------------------------

rem Cetak
echo ------------------------------------->>hasil.txt
echo Data Luas Bagunan>>hasil.txt
echo ------------------------------------->>hasil.txt
echo Panjang Bangunan	: %p%>>hasil.txt
echo Lebar Bangunan		: %l%>>hasil.txt
echo Luas Bangunan		: %luas%>>hasil.txt
echo Ketegori			: %grade%>>hasil.txt
echo ------------------------------------->>hasil.txt
pause