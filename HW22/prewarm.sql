CREATE EXTENSION pg_prewarm;
SELECT pg_prewarm('t_1000');
SELECT pg_prewarm('t_10000');
SELECT pg_prewarm('t_100000');

