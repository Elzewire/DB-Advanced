CREATE INDEX idx_gin_hw19 ON hw19_gin_table USING GIN (to_tsvector('english', content));
CREATE INDEX idx_gist_hw19 ON hw19_gist_table USING GIST(content);
CREATE INDEX idx_btree_hw19 ON hw19_btree_table(content);