@echo off

set /p nilai= Masukkan nilai:

if %nilai% GEQ 5000 (
	set /a diskon=2*nilai/100
) else (
	set /a diskon=0*nilai
)

set /a nilai_akhir=nilai-diskon

echo %nilai%
echo %diskon%
echo %nilai_akhir%

pause


