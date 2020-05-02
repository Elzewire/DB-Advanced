INSERT INTO hw19_gin_table(id, content)
    SELECT (random() * 100000)::integer, 'content' || i
        FROM generate_series(1, 100000) AS g(i);

INSERT INTO hw19_gist_table(id, content)
    SELECT (random() * 100000)::integer, 'content' || i
        FROM generate_series(1, 100000) AS g(i);

INSERT INTO hw19_btree_table(id, content)
    SELECT (random() * 100000)::integer, 'content' || i
        FROM generate_series(1, 100000) AS g(i);