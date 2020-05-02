CREATE INDEX hw19_gin_table_idx ON hw19_gin_table USING GIN(content gin_trgm_ops);
CREATE INDEX hw19_gist_table_idx ON hw19_gist_table USING GIST(content gist_trgm_ops);
CREATE INDEX hw19_btree_table_idx ON hw19_btree_table(content);