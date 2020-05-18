\set id random(0, 100000)

BEGIN;
SELECT test_sql_func(var => 'test' || :id);
END;