@echo off
color 1b
title Latihan 6 Operasi Matematika
rem ================ setting variabel ===========
set nilai_a=4
set nilai_b=5
set nilai_c=10

rem ================ Perhitungan ================
set /a hasil_a=nilai_a*nilai_b
set /a hasil_b=nilai_c/nilai_b
set /a hasil_c=nilai_a+nilai_b
set /a hasil_d=nilai_c-nilai_a

rem ================ Output =====================
echo --------------------------------------------
echo 			PERHITUNGAN MATH
echo --------------------------------------------
echo Nilai A 	: %hasil_a%
echo Nilai B 	: %hasil_b%
echo Nilai C 	: %hasil_c%
echo Nilai D 	: %hasil_d%
echo --------------------------------------------
pause