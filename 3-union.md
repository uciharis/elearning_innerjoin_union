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

querinya adalah sebagai berikut :

`
SELECT * FROM tabel_A
UNION
SELECT * FROM tabel_B ;
`

## Menggunakan UNION dengan klause WHERE
Misalkan kita ingin menggabungkan tabel ber kode produksi tertentu saja, maka kita menambahkan WHERE di kedua statement setelah FROM masing masing tabel.

contoh queri :

`
SELECT * FROM tabel_A
WHERE kode_produksi = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produksi = 'prod-04' ;
`
## Menyelaraskan Kolom
Ketika ketika mendapatkan kondisi ideal seperti jumlah kolom A dan B sama dan posisinya sesuai, serta nama kolomnya sama maka kita dapat dengan mudah melakukan UNION.

Lalu bagaimana jika kondisi tersebut tidak terpenuhi, apakah kita tetap bisa melakukan UNION ?

Bisa.

Dengan cara kita perlu menyelaraskan terlebih dahulu masing-masing tabel agar sesuai. Contohnya tabel yang perlu penyesuaian adalah sebagai berikut.

Gambar Tabel  Customer dan Supplier
![perlu konforming](/perlu-conforming.png)