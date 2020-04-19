\set id 1
BEGIN;
    SELECT name from test_vacuum WHERE id = :id;
END;