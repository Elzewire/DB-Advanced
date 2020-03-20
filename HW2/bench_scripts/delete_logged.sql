\set id random(1, 102651)
BEGIN;
    DELETE FROM public.logged_table WHERE id = :id;
END;