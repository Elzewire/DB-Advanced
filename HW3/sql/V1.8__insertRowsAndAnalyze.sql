INSERT INTO cluster_table
    SELECT (random()*10000)::integer, 'test'
        FROM generate_series(1, 10000) AS g(i);

ANALYZE cluster_table;