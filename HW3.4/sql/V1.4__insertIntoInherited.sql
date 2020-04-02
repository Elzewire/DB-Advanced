INSERT INTO inherited_hub(id, name)
    SELECT (random() * 100000::integer), 'test'
        FROM generate_series(1, 1000000) AS k(i);