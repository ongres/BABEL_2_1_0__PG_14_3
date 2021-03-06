CREATE TABLE t1 (a bit, b int);
GO
INSERT INTO t1 VALUES (1, 1);
GO
INSERT INTO t1 VALUES (0, 0);
GO

SELECT a FROM t1 WHERE a = 0;
GO
SELECT a FROM t1 WHERE a = 1;
GO
SELECT a FROM t1 WHERE a = -1;
GO

SELECT a FROM t1 WHERE a <> 0;
GO
SELECT a FROM t1 WHERE a <> 1;
GO
SELECT a FROM t1 WHERE a <> -1;
GO

SELECT a FROM t1 WHERE a > 0;
GO
SELECT a FROM t1 WHERE a > 1;
GO
SELECT a FROM t1 WHERE a > -1;
GO

SELECT a FROM t1 WHERE a >= 0 ORDER BY b;
GO
SELECT a FROM t1 WHERE a >= 1;
GO
SELECT a FROM t1 WHERE a >= -1;
GO

SELECT a FROM t1 WHERE a < 0;
GO
SELECT a FROM t1 WHERE a < 1;
GO
SELECT a FROM t1 WHERE a < -1;
GO

SELECT a FROM t1 WHERE a <= 0;
GO
SELECT a FROM t1 WHERE a <= 1 ORDER BY b;
GO
SELECT a FROM t1 WHERE a <= -1 ORDER BY b;
GO

CREATE TABLE t2 ( a INT);
GO
INSERT INTO t2 VALUES (1);
GO
INSERT INTO t2 VALUES (0);
GO
INSERT INTO t2 VALUES (-1);
GO

SELECT a FROM t2 WHERE a = CAST(0 AS bit);
GO
SELECT a FROM t2 WHERE a = CAST(1 AS bit) ORDER BY a;
GO

SELECT a FROM t2 WHERE a <> CAST(0 AS bit) ORDER BY a;
GO
SELECT a FROM t2 WHERE a <> CAST(1 AS bit);
GO

SELECT a FROM t2 WHERE a > CAST(0 AS bit) ORDER BY a;
GO
SELECT a FROM t2 WHERE a > CAST(1 AS bit);
GO

SELECT a FROM t2 WHERE a >= CAST(0 AS bit) ORDER BY a;
GO
SELECT a FROM t2 WHERE a >= CAST(1 AS bit) ORDER BY a;
GO

SELECT a FROM t2 WHERE a < CAST(0 AS bit);
GO
SELECT a FROM t2 WHERE a < CAST(1 AS bit);
GO

SELECT a FROM t2 WHERE a <= CAST(0 AS bit);
GO
SELECT a FROM t2 WHERE a <= CAST(1 AS bit) ORDER BY a;
GO

reset babelfishpg_tsql.sql_dialect;
GO
DROP TABLE t1;
GO
DROP TABLE t2;
GO
