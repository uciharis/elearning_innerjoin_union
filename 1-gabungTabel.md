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

urutan nama kolom dipengaruhi di urutan FROM tabelnya.
Karena tabel kategori disebutkan terlebih dahulu, maka hasil penggabungannya adalah kolom dari tabel kategori dulu yang ada di sebelah kiri.

hasil penggabungan ini menjadi tabel baru dan bersifat sementara. Tabel penggabungan tidak tersimpan secara default di database.

cara mencocokkan dan menggabung disebut sebagai **INNER JOIN**.

### Menggunakan prefiks nama Tabel

Jika kita menggunakan wildcard pada SELECT tanpa menentukan spesifik kolom,urutannya akan dimulai dari tabel mana yang disebutkan terlebih dulu di FROM.

tetapi jika kita menyebutkan spesifik prefix nama tabel + wildcard, urutannya akan mengikuti penyebutan tersebut(tidak mengikuti FROM).

contoh :

`
SELECT tb_kategori.* , tb_warna.* FROM warna, kategori WHERE nama_barang = nama_item ;
`

urutan tabel join nya akan menjadi -->

gambar 4.
![gambar 4](/gambar2.png)

prefix tabel (kolom) di SELECT meng-override urutan di FROM tabel.

### Penggabungan tanpa kondisi

Perhatikan query berikut :

`
SELECT * FROM kategori, warna;
`

Queri diatas adalah contoh **cross join**,
atau penggabungan tanpa kondisi tertentu.
hasil penggabungan tabel tersebut akan memiliki output baris sebanyak baris tabel 1 x baris tabel 2.

Jika ada tabel 1 memiliki 3 baris & tabel 2 4 baris. Maka hasil cross joinnya akan menghasilkan 12 baris.

hal ini dikarenakan masing-masing baris Tabel 1 akan dihubungkan dengan baris Tabel 2.

Catatan:

pembahasan diatas merupakan cara inner join menggunakan key column. pada materi selanjutnya kita akan melakukan inner join dengan keyword:

`
INNER JOIN ... ON ...
`