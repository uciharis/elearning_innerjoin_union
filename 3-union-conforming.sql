BEGIN TRANSACTION;
DROP TABLE IF EXISTS "customers";
CREATE TABLE IF NOT EXISTS "customers" (
	"customer_name"	TEXT,
	"contact_name"	TEXT,
	"city"	TEXT
);
DROP TABLE IF EXISTS "suppliers";
CREATE TABLE IF NOT EXISTS "suppliers" (
	"contact_name"	TEXT,
	"supplier_name"	TEXT,
	"city"	TEXT
);
INSERT INTO "customers" VALUES ('fransiska maria','maria','jakarta');
INSERT INTO "customers" VALUES ('ana helena','ana helena','surabaya');
INSERT INTO "customers" VALUES ('lili subari','lili','makassar');
INSERT INTO "suppliers" VALUES ('yulius','yulius Syrup','jakarta');
INSERT INTO "suppliers" VALUES ('sherly ani','bandung bakery','bandung');
INSERT INTO "suppliers" VALUES ('regina tara','tara pastry','semarang');
COMMIT;
