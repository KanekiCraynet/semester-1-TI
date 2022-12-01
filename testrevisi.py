#|===================================|
#|Aplikasi Penggajian Python      |
#|Name :    |
#|Kampus:      |
#|===================================|

import os
import sys
def pindah(label):
 global nomor
 nomor = label

def clearscreen():
 os.system('cls')

def keluar():
 sys.exit()


def ulang():
    ulang = input("Apakah anda ingin mengulang  lagi ? [y/n] ")
    if ulang == "y" or ulang == "Y" :
        pindah(0)
        clearscreen()
    elif ulang == "n" or ulang == "N" :
        clearscreen()
        keluar()
    else :
        keluar()


def rumus():
    global gakot, gaji, bpjs, bpjk, tunjangan, persen, total
    tunjangan = 4000000
    persen = (gakot * 12) / 100 + tunjangan
    total = persen + tunjangan




def cetak():
    print ("===============================================================================")
    print ("\t \t               HALAMAN UTAMA APLIKASI SEDERHANA                           ")
    print ("===============================================================================")
    print ("| Nama : ", nama)
    print ("| NIK : ", nik)
    print ("| Jabatan : ", jabatan)
    print ("| Gaji Gaji Kotor adalah : Rp. ", gakot)
    #1print ("| Potongan 5% : Rp. ", persen)
    print ("")
    print ("=>> Gaji Bersih adalah : Rp. ", total)
    print ("")

nomor = 0

while True :
    if nomor == 0 :
        clearscreen()
        print ("--------------------------------")
        print ("HALAMAN UTAMA APLIKASI SEDERHANA")
        print ("--------------------------------")
        print ("")
        print ("Menu yang tersedia:")
        print ("| 1. PENGGAJIAN KARYAWAN |")
        print ("| 2. exit |")
        menu=int(input("Masukan Pilihan Anda: "))
        clearscreen()
        print ("=============================================================")
        print ("               INPUT DATA KARYAWAN                           ")
        print ("=============================================================")
        nik= input("Masukan Nomor Induk Karyawan: ")
        nama = input("Masukkan nama : ")
        kelamin = input("Masukkan Kelamin Anda : ")
        alamat = input("Masukkan alamat anda : ")
    if nik == 1:
        pindah(1)
    elif nik == 2 :
        pindah(2)
    elif nik == 3 :
        pindah(3)
    elif nik == 4 :
        pindah(4)
    else            :
        pindah(0)

    if nomor== 1 :
        jabatan = "Kepala Divisi"
        gakot= 5000000
        clearscreen()
        rumus()
        cetak()
        ulang()

    elif nomor == 2 :
        jabatan = "Manajer"
        gakot = 6000000
        lembur = 80000
        clearscreen()
        rumus()
        cetak()
        ulang()

    elif nomor == 3 :
        jabatan = "Superviser"
        gakot = 4000000
        lembur = 60000
        clearscreen()
        rumus()
        cetak()
        ulang()

    elif nomor == 4 :
        jabatan = "Operator"
        gakot = 2000000
        lembur = 40000
        clearscreen()
        rumus()
        cetak()
        ulang()
    else :
        keluar()