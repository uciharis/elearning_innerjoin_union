BEGIN TRANSACTION;
DROP TABLE IF EXISTS "tabel_A";
CREATE TABLE IF NOT EXISTS "tabel_A" (
	"kode_transaksi"	NUMERIC,
	"nama_produk"	TEXT,
	"qty"	NUMERIC,
	"harga"	NUMERIC
);
DROP TABLE IF EXISTS "tabel_B";
CREATE TABLE IF NOT EXISTS "tabel_B" (
	"kode_transaksi"	NUMERIC,
	"nama_produk"	TEXT,
	"qty"	NUMERIC,
	"harga"	NUMERIC
);
INSERT INTO "tabel_A" VALUES ('tr-001','kotak pensil customer',5,62500);
INSERT INTO "tabel_A" VALUES ('tr-002','flash disk customer 32 gb',2,100000);
INSERT INTO "tabel_A" VALUES ('tr-003','tas travel organizer',4,48000);
INSERT INTO "tabel_B" VALUES ('tr-004','gift voucher 100rb',2,102000);
INSERT INTO "tabel_B" VALUES ('tr-005','buku planner agenda',3,92000);
INSERT INTO "tabel_B" VALUES ('tr-006','kotak pensil',6,62500);
COMMIT;
