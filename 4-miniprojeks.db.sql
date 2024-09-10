BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pelanggan" (
	"no_urut"	INTEGER,
	"kode_pelanggan"	TEXT,
	"nama_customer"	TEXT,
	"alamat"	TEXT,
	PRIMARY KEY("no_urut" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "penjualan" (
	"kode_transaksi"	TEXT,
	"kode_pelanggan"	TEXT,
	"kode_produk"	TEXT,
	"nama_produk"	TEXT,
	"qty"	NUMERIC,
	"harga"	NUMERIC
);
CREATE TABLE IF NOT EXISTS "produk_1" (
	"no_urut"	INTEGER,
	"kode_produk"	TEXT,
	"nama_produk"	TEXT,
	"harga"	NUMERIC,
	PRIMARY KEY("no_urut" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "produk_2" (
	"no_urut"	INTEGER,
	"kode_produk"	TEXT,
	"nama_produk"	TEXT,
	"harga"	NUMERIC,
	PRIMARY KEY("no_urut" AUTOINCREMENT)
);
INSERT INTO "pelanggan" VALUES (0,NULL,NULL,NULL);
INSERT INTO "pelanggan" VALUES (1,'customer01','eva novianti,SH','vila sempilan no 67 kota b');
INSERT INTO "pelanggan" VALUES (2,'customer02','heidi goh','vila sempilan no 11 kota b');
INSERT INTO "pelanggan" VALUES (3,'customer03','unang handoko','vila sempilan no 1 kota b');
INSERT INTO "pelanggan" VALUES (4,'customer04','jokolono sukarman','vila permata intan berkilau blok c5-7');
INSERT INTO "pelanggan" VALUES (5,'customer05','tommy sinaga','vila permata intan berkilau a1/2');
INSERT INTO "pelanggan" VALUES (7,'customer07','agus cahyono','vila gunung seribu blok f4 no 8');
INSERT INTO "pelanggan" VALUES (8,'customer08','maria sirait','vila bukit sagitarius gang sawit no 3');
INSERT INTO "pelanggan" VALUES (9,'customer09','Ir Ita nugraha','vila bukit sagitarius gang kelapa no 6');
INSERT INTO "pelanggan" VALUES (10,'customer10','Djoko wardoyo','vila bukit sagitarius blok A1 no 1');
INSERT INTO "pelanggan" VALUES (11,'customer11','Unang maung','vila sempilan no 3 kota b');
INSERT INTO "pelanggan" VALUES (12,'customer12','Tomi wiranto','vila permata intan berkilau blok a1/211');
INSERT INTO "penjualan" VALUES ('tr-001','customer07','prod-01','kotak pensil',5,62500);
INSERT INTO "penjualan" VALUES ('tr-001','customer07','prod-03','flash disk 32 gb',1,100000);
INSERT INTO "penjualan" VALUES ('tr-001','customer07','prod-09','buku planner agenda',3,92000);
INSERT INTO "penjualan" VALUES ('tr-001','customer07','prod-04','flash disk 32 gb',3,40000);
INSERT INTO "penjualan" VALUES ('tr-002','customer01','prod-03','gift voucher 100rb',2,100000);
INSERT INTO "penjualan" VALUES ('tr-002','customer01','prod-10','stick notes 500 sheets',4,50000);
INSERT INTO "penjualan" VALUES ('tr-002','customer01','prod-07','tas travel organizer',1,40000);
INSERT INTO "penjualan" VALUES ('tr-003','customer03','prod-02','flash disk 64 gb',2,55000);
INSERT INTO "penjualan" VALUES ('tr-004','customer03','prod-10','stick notes 500 sheets',5,55000);
INSERT INTO "penjualan" VALUES ('tr-004','customer03','prod-04','flash disk 32 gb',4,40000);
INSERT INTO "penjualan" VALUES ('tr-005','customer05','prod-09','buku planner agenda',3,92000);
INSERT INTO "penjualan" VALUES ('tr-005','customer05','prod-01','kotak pensil',1,62500);
INSERT INTO "penjualan" VALUES ('tr-005','customer05','prod-04','flash disk 32 gb',2,40000);
INSERT INTO "penjualan" VALUES ('tr-006','customer02','prod-05','gift voucher 250rb',4,250000);
INSERT INTO "penjualan" VALUES ('tr-006','customer02','prod-08','gantungan kunci',2,15800);
INSERT INTO "produk_1" VALUES (1,'prod-01','kotak pensil DQlab',62500);
INSERT INTO "produk_1" VALUES (2,'prod-02','flashdisk dqlab 64gb',55000);
INSERT INTO "produk_1" VALUES (3,'prod-03','gift voucher dqlab 100rb',95000);
INSERT INTO "produk_1" VALUES (4,'prod-04','flashdisk dqlab 32gb',40000);
INSERT INTO "produk_1" VALUES (5,'prod-05','gift voucher dqlab 250rb',250000);
INSERT INTO "produk_2" VALUES (6,NULL,NULL,NULL);
INSERT INTO "produk_2" VALUES (7,'prod-07','tas travel organizer',48000);
INSERT INTO "produk_2" VALUES (8,'prod-08','gantungan kunci',15800);
INSERT INTO "produk_2" VALUES (9,'prod-09','buku planner agenda dqlab',92000);
INSERT INTO "produk_2" VALUES (10,'prod-10','sticky notes 500 sheets',55000);
COMMIT;
