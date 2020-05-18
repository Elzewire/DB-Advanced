CREATE TABLE plpgsql_test(
    id integer,
    name varchar
);

CREATE OR REPLACE FUNCTION test_sql_func(var varchar)
RETURNS INTEGER AS $$
    SELECT id from plpgsql_test WHERE name = var LIMIT 1;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION test_plpgsql_func(var varchar)
RETURNS INTEGER AS $$
    BEGIN
       RETURN (SELECT id FROM plpgsql_test WHERE name = var LIMIT 1);
    END;
$$ LANGUAGE PLPGSQL;
