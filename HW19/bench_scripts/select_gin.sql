BEGIN;
SELECT * FROM hw19_gin_table
    WHERE content LIKE 'content12%';
END;