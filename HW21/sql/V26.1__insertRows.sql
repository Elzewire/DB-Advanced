INSERT INTO plpgsql_table(id, content)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 100000) AS g(i);