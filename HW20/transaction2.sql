BEGIN TRANSACTION;

UPDATE test
SET name = 'test #2'
WHERE id = 2;

UPDATE test
SET name = 'test #2'
WHERE id = 1;

COMMIT;