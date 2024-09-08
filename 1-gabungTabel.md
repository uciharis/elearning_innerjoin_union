# Menggabung tabel dari relasi kolom

Melalui penggunaan SQL, kita dapat menggabungkan data dari tabel lain.

Sebagai contoh, kita akan menggunakan data dari tabel warna dan tabel kategori.

Gambar 1. Tabel Warna
![Gambar 1](/gambar1.png)

Gambar 2. Tabel Kategori
![Gambar 2](/gambar1a.png)

jika diperhatikan, tabel warna dan tabel kategori memiliki kolom yang berisi data yang memiliki nilai yang sama.

kolom nama_barang dan nama_item bisa dijadikan penghubung tabel tersebut.

Selanjutnya kolom tersebut kita sebut sebagai kolom kunci.

### Menggabungkan ( join ) Tabel dengan kolom kunci

untuk menggabungkan kedua tabel tersebut, kita gunakan query berikut :

`
SELECT * FROM kategori, warna WHERE nama_barang = nama_item;
`

outputnya akan seperti berikut :

Gambar 3. hasil penggabungan dua tabel
![Gambar 2](/gambar1c.png)

hasil penggabungan ini menjadi tabel baru dan bersifat sementara. Tabel penggabungan tidak tersimpan secara default di database.

cara mencocokkan dan menggabung disebut sebagai **INNER JOIN**.

