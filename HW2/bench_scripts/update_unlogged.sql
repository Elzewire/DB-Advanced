\set id random(1, 190795)
BEGIN;
    UPDATE public.unlogged_table SET name ='retest' WHERE id = :id;
END;