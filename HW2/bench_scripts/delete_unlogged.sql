\set ninserts :scale
\set id random(1, :ninserts)
BEGIN;
    DELETE FROM mydb.public.unlogged_table WHERE id = :id;
END;