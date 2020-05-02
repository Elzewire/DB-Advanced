BEGIN;
SELECT * FROM hw19_gist_table
    WHERE content LIKE 'content12%';
END;