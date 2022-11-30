@echo off
title Latihan 10 Inputan Toko
rem --------------inputan variabel-------------
set /p no_member=	Masukkan Nomor Member 	:
set /p nama=	Masukkan Nama Lengkap 	:
set /p alamat=	Masukkan Alamat Lengkap :

rem --------------inputan variabel produk------
echo ------------------------------------------
echo 		PRODUK TOKO UMKABA
echo ------------------------------------------

set /p produk1=	1. Sarimi		:
set /p produk2=	2. Teh Tarik		:
set /p produk3=	3. Sabun		:
set /p produk4=	4. Sampoo		:
echo ------------------------------------------	

rem -------------OPERASI PERHITUNGAN-----------------
set /a total_belanja=produk1+produk2+produk3+produk4
if %total_belanja% GEQ 50000 (
	set /a diskon=2*total_belanja/100
	
)else (
	set /a diskon=total_belanja*0
	
)
set /a total_stl_diskon= total_belanja-diskon

rem -------------------OUTPUT-----------
cls
echo -------------------------------
echo 	TOKO BAROKAH
echo -------------------------------
echo Nomor Member 	: %no_member%
echo Nama Lengkap 	: %nama%
echo Alamat		: %alamat%

echo -------------------------------
echo 	NOTA BELANJA
echo -------------------------------
echo 1. Sarimi		: %produk1%
echo 2. Teh Tarik		: %produk2%
echo 3. Sabun		: %produk3%
echo 4. Sampoo		: %produk4%
echo -------------------------------
echo Diskon 		: %diskon%
echo Total belanja 		: %total_stl_diskon%
echo -------------------------------
pause


