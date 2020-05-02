CREATE INDEX idx_gin_hw19 ON hw19_gin_table USING GIN (content gin_trgm_ops);
CREATE INDEX idx_gist_hw19 ON hw19_gist_table USING GIST(content gist_trgm_ops);
CREATE INDEX idx_btree_hw19 ON hw19_btree_table(content);