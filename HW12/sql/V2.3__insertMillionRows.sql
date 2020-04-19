INSERT INTO hub_for_trg(id, name)
    SELECT (random() * 1000000::integer), 'test' || i
        FROM generate_series(1, 1000000) AS k(i);