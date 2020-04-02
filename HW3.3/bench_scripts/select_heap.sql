\set id random(1, 100000);
BEGIN;
    SELECT name FROM heap_table
        WHERE id = :id;
END;