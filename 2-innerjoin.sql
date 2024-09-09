BEGIN TRANSACTION;
DROP TABLE IF EXISTS "produk";
CREATE TABLE IF NOT EXISTS "produk" (
	"nama"	TEXT,
	"harga"	INTEGER
);
DROP TABLE IF EXISTS "penjualan";
CREATE TABLE IF NOT EXISTS "penjualan" (
	"nomor"	INTEGER,
	"nama_produk"	TEXT,
	"qty"	NUMERIC,
	PRIMARY KEY("nomor" AUTOINCREMENT)
);
INSERT INTO "produk" VALUES ('kotak pensil',62500);
INSERT INTO "produk" VALUES ('flashdisk 64 gb',55000);
INSERT INTO "produk" VALUES ('gift voucher 100rb',105000);
INSERT INTO "produk" VALUES ('flashdisk 32 gb',33000);
INSERT INTO "produk" VALUES ('gift voucher 250rb',244000);
INSERT INTO "produk" VALUES ('pulpen multifungsi + laser',92500);
INSERT INTO "produk" VALUES ('tas travel organizer',48000);
INSERT INTO "produk" VALUES ('gantungan kunci',15800);
INSERT INTO "produk" VALUES ('buku planner agenda',92000);
INSERT INTO "produk" VALUES ('sticknotes 500 sheets',55000);
INSERT INTO "penjualan" VALUES (1,'kotak pensil',13);
INSERT INTO "penjualan" VALUES (2,'buku planner agenda',4);
INSERT INTO "penjualan" VALUES (3,'flashdisk 32 gb',1);
INSERT INTO "penjualan" VALUES (4,'flashdisk 64 gb',12);
INSERT INTO "penjualan" VALUES (5,'kotak pensil',7);
INSERT INTO "penjualan" VALUES (6,'tas travel organizer',5);
INSERT INTO "penjualan" VALUES (7,'sticknotes 500 sheets',14);
INSERT INTO "penjualan" VALUES (8,'gift voucher 250rb',13);
INSERT INTO "penjualan" VALUES (9,'gift voucher 100rb',8);
INSERT INTO "penjualan" VALUES (10,'kotak pensil',4);
INSERT INTO "penjualan" VALUES (11,'buku planner agenda',7);
INSERT INTO "penjualan" VALUES (12,'gift voucher 100rb',5);
INSERT INTO "penjualan" VALUES (13,'kotak pensil',5);
INSERT INTO "penjualan" VALUES (14,'pulpen multifungsi + laser',2);
INSERT INTO "penjualan" VALUES (15,'gantungan kunci',13);
INSERT INTO "penjualan" VALUES (16,'tas travel organizer',4);
INSERT INTO "penjualan" VALUES (17,'gantungan kunci',5);
COMMIT;
