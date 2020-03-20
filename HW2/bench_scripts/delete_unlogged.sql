\set id random(1, 167794)
BEGIN;
    DELETE FROM public.unlogged_table WHERE id = :id;
END;