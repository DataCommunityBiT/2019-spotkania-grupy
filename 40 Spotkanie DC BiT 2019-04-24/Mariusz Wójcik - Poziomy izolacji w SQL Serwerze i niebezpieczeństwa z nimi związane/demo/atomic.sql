CREATE TABLE table1 (column1 INT NOT NULL)
CREATE TABLE table2 (column1 INT NOT NULL)
CREATE TABLE table3 (column1 INT NOT NULL)


BEGIN TRANSACTION

INSERT table1 (column1)
VALUES (1),(2),(3);

INSERT table2 (column1)
VALUES (4),(NULL),(6);

INSERT table3 (column1)
VALUES (7),(8),(9);

COMMIT TRANSACTION
GO


SELECT column1 FROM table1
SELECT column1 FROM table2
SELECT column1 FROM table3
GO


DROP TABLE table1, table2 ,table3




-- jak poprawić?

SET XACT_ABORT ON

CREATE TABLE table1 (column1 INT NOT NULL)
CREATE TABLE table2 (column1 INT NOT NULL)
CREATE TABLE table3 (column1 INT NOT NULL)


BEGIN TRANSACTION


INSERT table1 (column1)
VALUES (1),(2),(3);

INSERT table2 (column1)
VALUES (4),(NULL),(6);

INSERT table3 (column1)
VALUES (7),(8),(9);

COMMIT TRANSACTION
GO


SELECT column1 FROM table1
SELECT column1 FROM table2
SELECT column1 FROM table3
GO


DROP TABLE table1, table2 ,table3
select @@trancount;