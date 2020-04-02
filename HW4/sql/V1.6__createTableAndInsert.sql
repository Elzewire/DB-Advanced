CREATE TABLE test_vacuum (
    id integer,
    name varchar
) WITH (autovacuum_enabled = false);

INSERT INTO test_vacuum VALUES (1, 'test');