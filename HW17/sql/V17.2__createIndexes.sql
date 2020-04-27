CREATE INDEX btree_idx ON btree_idx_table(name);
CREATE INDEX hash_idx ON hash_idx_table USING HASH (name);
CREATE INDEX brin_idx ON brin_idx_table USING BRIN (name);