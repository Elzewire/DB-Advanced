\set ninserts :scale
\set id random(1, :ninserts)
BEGIN;
    INSERT INTO mydb.public.unlogged_table VALUES (:id, 'test');
END;