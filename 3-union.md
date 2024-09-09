# Union

misalkan ada tabel **A** dengan kode transaksi tr-001 s.d tr-012
dan tabel **B** dengan kode transaksi tr-013 s.d tr-069

masing-masing tabel adalah tabel penjualan.

kasus diatas tidak bisa diselesaikan dengan metode INNER JOIN. Akan lebih baik menggunakan metode UNION agar tabel tersebut merged menjadi 1 tabel.

Hasil penggabungan tersebut bukan memanjang searah kolom, tetapi vertikal searah baris. Syarat menggunakan UNION adalah :

* kedua tabel harus memiliki jumlah kolom yang sama
* kolom tersebut harus memiliki tipe data yang sama
* kolom memiliki urutan posisi yang sama

Format querinya adalah :

> SELECT nama_kolom1, nama_kolom2, .. FROM tabel1
> UNION
> SELECT nama_kolom1, nama_kolom2, .. FROM tabel ;

## Menggabungkan tabel

Berikut tabel A dan tabel B yang akan digabung menggunakan UNION

Gambar Tabel A
![tabel A](/tabel-UNION-A.png)

Gambar Tabel B
![tabel B](/tabel-UNION-b.png)

Kedua tabel diatas berada di dalam file 3-union.sql & 3-union.sqbpro

sebelum menggabungkan, mari diperiksa tabel A dan B apakah memenuhi syarat untuk dilakukan penggabungan UNION.

Terlihat bahwa baik tabel A dan B memiliki :

* jumlah kolom yang sama
* tipe data yang sama
* urutan kolom yang sama