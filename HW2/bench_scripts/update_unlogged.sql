\set id random(1, 167794)
BEGIN;
    UPDATE public.unlogged_table SET name ='retest' WHERE id = :id;
END;