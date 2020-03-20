\set id random(1, 190795)
BEGIN;
    DELETE FROM public.unlogged_table WHERE id = :id;
END;