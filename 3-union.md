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