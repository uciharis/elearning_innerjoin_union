# Inner Join

kita akan menggunakan kembali tabel kategori dan warna

Gambar 1. Tabel kategori
![gambar 1](/gambar1a.png)

Gambar 1.a Tabel warna
![gambar 1a](/gambar1.png)

berikut sintaks INNER JOIN :

`
SELECT * FROM tabel_1 INNER JOIN tabel_2 ON tabel1.kolom1 = tabel_2.kolom2;
`

catatan : INNER JOIN memiliki analogi seperti irisan pada himpunan.

gambar irisan
![gambar irisan](/irisan.png)

contoh :

`
SELECT * FROM warna INNER Join kategori ON warna.nama_barang = kategori.nama_item ;
`

outputnya adalah :

Gambar hasil irisan
![gambar output irisan](/output-irisan.png)

### Penggunaan tabel baru: Tabel Penjualan dan Tabel produk

Berikut output dari Tabel penjualan

Gambar Tabel Penjualan
![tabel penjualan](/tabel_penjualan.png)

dan Tabel produk

Gambar Tabel Produk
![tabel produk](/tabel_produk.png)

