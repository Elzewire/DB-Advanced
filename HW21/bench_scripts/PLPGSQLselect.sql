\set id random(0, 100000)

BEGIN;
SELECT test_plpgsql_func(var => 'test' || :id);
END;