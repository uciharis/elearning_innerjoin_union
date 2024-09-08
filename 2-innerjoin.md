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

### Memilih beberapa kolom untuk ditampilkan

Sintaknya adalah sebagai berikut :

Gambar sintaks INER JOIN beberapa kolom
![Gambar sintak1](/sintak-innerjoin-kolomx.png)

catatan :

* pada opsi menampilkan beberapa kolom, harus menggunakan prefix tabel di dalam kolom yang ingin ditampilkan.

* kolom yang ditampilkan, bisa berselang seling antar tabel (pada SELECT) asalkan menyebutkan prefix tabelnya.

contoh menampilkan kolom berselang seling antar tabelnya (asal menggunakan prefix) :

`
SELECT penjualan.kode_transaksi, penjualan.kode_pelanggan, penjualan.kode_produk, produk.nama_produk, produk.harga, penjualan.qty, produk.harga,penjualan.qty*produk.harga AS total INNER JOIN produk ON penjualan.kode_produk = produk.kode_produk;
`
nb :

latihan membuat database di AWS free tier

password master : SQL123testing?

username master : admin

instance identifier : database-1