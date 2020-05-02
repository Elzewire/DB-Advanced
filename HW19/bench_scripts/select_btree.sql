BEGIN;
SELECT * FROM hw19_btree_table
    WHERE content LIKE 'content%';
END;