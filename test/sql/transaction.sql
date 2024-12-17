CREATE TABLE s (a int);
CREATE TABLE t (b int) USING columnstore;

BEGIN;
INSERT INTO s VALUES (1);
INSERT INTO t VALUES (2);
COMMIT;

SELECT * FROM s;
SELECT * FROM t;

DROP TABLE s, t;
