\set id random(1, 1000000)
BEGIN;
    SELECT name FROM heap_table
        WHERE id = :id;
END;