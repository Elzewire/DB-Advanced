INSERT INTO t1(id, name)
    SELECT (random() * 10000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t2(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t3(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t4(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t5(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t6(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t7(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);

INSERT INTO t8(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 10000) AS g(i);
