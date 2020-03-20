\set id random(1, 107221)
BEGIN;
    DELETE FROM public.logged_table WHERE id = :id;
END;