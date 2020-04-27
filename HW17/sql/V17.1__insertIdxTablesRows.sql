INSERT INTO btree_idx_table(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 100000) AS g(i);

INSERT INTO hash_idx_table(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 100000) AS g(i);

INSERT INTO brin_idx_table(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 100000) AS g(i);
