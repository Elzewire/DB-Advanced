\set id random(1, 1000000)
\set newid random(1, 1000000)
BEGIN;
    UPDATE inherited_hub SET name ='retest', id = :newid WHERE id = :id;
END;