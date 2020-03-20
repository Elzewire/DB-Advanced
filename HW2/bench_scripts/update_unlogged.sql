\set ninserts :scale
\set id random(1, :ninserts)
BEGIN;
    UPDATE mydb.public.unlogged_table SET name ='retest' WHERE id = :id;
END;