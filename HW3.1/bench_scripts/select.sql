\set a random(1, 5000)
\set b random(5001, 10000)
BEGIN;
    SELECT * FROM clustered_table
        WHERE id > :a AND id < :b;
END;