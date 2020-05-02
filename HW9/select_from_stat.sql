SELECT query, calls, total_time, rows,
       100.0 * shared_blks_read / nullif(shared_blks_hit + shared_blks_read, 0) AS read_percent,
       total_time / calls as exec_time
    FROM pg_stat_statements
ORDER BY total_time DESC LIMIT 20;

SELECT sum(total_time / calls) / 1000
    FROM pg_stat_statements
WHERE calls = 28271