\set id random(1, 100000);
BEGIN;
    SELECT name FROM part_hub_table
        WHERE id = :id;
END;