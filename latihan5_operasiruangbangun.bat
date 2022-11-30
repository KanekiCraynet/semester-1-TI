@echo off
title Latihan 5 Perhitungan Luas Segitiga
rem ==============setting variabel=================
set alas=200
set tinggi=500

rem ==============Setting Perhitungan =============
set /a luas=alas*tinggi/2

rem ==============Output===========================
echo ----------------------------------------------
echo         PERHITUNGAN LUAS SEGITIGA 
echo ----------------------------------------------
echo Alas 		: %alas%
echo Tinggi		: %tinggi%
echo ----------------------------------------------
echo Luas Segitiga tersebut adalah	: %luas%
pause