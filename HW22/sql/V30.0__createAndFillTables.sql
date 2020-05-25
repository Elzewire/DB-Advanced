CREATE TABLE t_1000(
    id INTEGER,
    name VARCHAR
);

CREATE TABLE t_10000(
    id INTEGER,
    name VARCHAR
);

CREATE TABLE t_100000(
    id INTEGER,
    name VARCHAR
);

INSERT INTO t_1000(id, name)
    SELECT (random() * 1000)::integer, 'test' || i
        FROM generate_series(1, 1000) AS k(i);

INSERT INTO t_10000(id, name)
    SELECT (random() * 10000)::integer, 'test' || i
        FROM generate_series(1, 1000) AS k(i);

INSERT INTO t_100000(id, name)
    SELECT (random() * 100000)::integer, 'test' || i
        FROM generate_series(1, 1000) AS k(i);

