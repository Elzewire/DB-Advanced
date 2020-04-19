\set id 1
BEGIN;
    UPDATE test_vacuum SET name = 'update' WHERE id = :id;
END;