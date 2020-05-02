BEGIN;
SELECT * FROM hw19_gin_table
    WHERE content LIKE 'cont%';
END;