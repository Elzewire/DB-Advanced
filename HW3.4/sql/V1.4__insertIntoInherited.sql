INSERT INTO inherited_hub(id, name)
SELECT i, 'test'::varchar FROM generate_series(1, 1000000) AS k(i);