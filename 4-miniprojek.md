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
sedangkan untuk latihan UNION, kita akan menggunakan 2 tabel yaitu tabel 1 dan tabel 2.

gambar tabel 1
![tabel 1](/miniprojek-union-tabel1.png)

gambar tabel 2
![tabel 2](/miniprojek-union-tabel2.png)

dua tabel diatas punya jumlah kolom yang sama. selain itu, letak kolom sudah bersesuaian. Tipe data pada masing2 kolom per tabelnya juga sudah sesuai.

maka dari itu kita akan menggabungkannya secara vertikal menggunakan UNION

Queri nya adalah sebagai berikut :

`
SELECT nama_produk, kode_produk, harga FROM tabel_1
WHERE harga < 100000
UNION
SELECT nama_produk, kode_produk, harga FROM tabel_2
WHERE harga < 50000 ;
`

Data dari tabel_1 dengan harga kurang dari Rp.100.000
akan digabung dengan tabel_2 dengan harga kurang dari Rp.50.000

hasilnya akan menjadi seperti dibawah ini :

Output UNION
![output union](/miniprojek-union-output.png)