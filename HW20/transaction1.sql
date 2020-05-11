BEGIN TRANSACTION;

UPDATE test
SET name = 'test #1'
WHERE id = 1;

UPDATE test
SET name = 'test #1'
WHERE id = 2;

COMMIT;