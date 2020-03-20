\set ninserts :scale
\set id random(1, :ninserts)
BEGIN;
    UPDATE public.unlogged_table SET name ='retest' WHERE id = :id;
END;