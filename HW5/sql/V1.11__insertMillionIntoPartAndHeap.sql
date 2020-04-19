INSERT INTO heap_table
    SELECT (random()*1000000)::integer, 'test'
        FROM generate_series(1, 1000000) AS g(i);

INSERT INTO part_hub_table
    SELECT (random()*1000000)::integer, 'test'
        FROM generate_series(1, 1000000) AS g(i);