INSERT INTO iof_trg_table(id, name)
    SELECT (random() * 1000)::integer, 'test' || i
        FROM generate_series(1, 1000) AS g(i);