\set i random(1, 100000)
BEGIN;
    SELECT * FROM btree_idx_table
    WHERE name = 'test' || i;
END;