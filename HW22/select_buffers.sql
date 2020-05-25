CREATE EXTENSION pg_buffercache;

SELECT c.relname,
       d.datname,
       pg_size_pretty(count(*) * current_setting('block_size')::INTEGER) AS buffered,
       round(100.0 * count(*) / (SELECT setting from pg_settings WHERE name='shared_buffers')::INTEGER, 1) AS buffer_percent,
       round(100.0 * count(*) * current_setting('block_size')::INTEGER / pg_table_size(c.oid), 1) AS percent_of_relation
FROM pg_class c
    INNER JOIN pg_buffercache b
        ON b.relfilenode = pg_relation_filenode(c.oid)
    INNER JOIN pg_database d ON b.reldatabase = d.oid
WHERE relname='t_1000' OR relname='t_10000' OR relname='t_100000'
GROUP BY c.oid, c.relname, d.datname;