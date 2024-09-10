# Mini Projek

Mini projek terdiri dari beberapa exercise yaitu INNER JOIN dan UNION

## INNER JOIN
Untuk latihan INNER JOIN kita akan menggunakan 2 tabel yaitu tabel pelanggan dan tabel penjualan.

Tabel pelanggan
![tabel pelanggan](/miniprojek-innerjoin-tabelpelanggan.png)

Tabel penjualan
![tabel penjualan](/miniprojek-innerjoin-tabelpenjualan.png)

kita akan menggabungkan 2 tabel diatas (tabel pelanggan dan penjualan) searah kolom.

berikut queri nya :

`
SELECT DISTINCT pelanggan.kode_pelanggan, pelanggan.nama_customer, pelanggan.alamat
FROM pelanggan
INNER JOIN penjualan
ON pelanggan.kode_pelanggan = penjualan.kode_pelanggan
WHERE penjualan.nama_produk = 'kotak pensil' OR penjualan.nama_produk = 'flash disk 32 gb' ;
`

outputnya adalah sebagai berikut :

gambar output
![output innerjoin](/miniprojek-output-innerjoin.png)

## UNION
sedangkan untuk latihan UNION, kita akan menggunakan 2 tabel yaitu tabel 