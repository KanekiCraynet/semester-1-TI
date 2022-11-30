@echo off
title Latihan 5 Perhitungan Luas Segitiga
rem ==============setting variabel=================
echo ----------------------------------------------
echo        INPUTAN NILAI ALAS DAN TINGGI
echo ----------------------------------------------
set /p alas=	Masukkan Nilai Alas		:
set /p tinggi=	Masukkan Nilai Tinggi		:

rem ==============Setting Perhitungan =============
set /a luas=alas*tinggi/2

if %luas% GEQ 500 (
	set grade=Kategori Besar
) else if %luas% GEQ 100 (
	set grade=Kategori Sedang
) else (
	set grade=Kategori Kecil
)

cls
rem ==============Output===========================
echo ----------------------------------------------
echo         PERHITUNGAN LUAS SEGITIGA 
echo ----------------------------------------------
echo Alas 		: %alas%
echo Tinggi		: %tinggi%
echo ----------------------------------------------
echo Luas Segitiga tersebut adalah	: %luas%
echo Kategori bagunannya adalah	: %grade%	
pause