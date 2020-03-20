\set id random(1, 102651)
BEGIN;
    UPDATE public.logged_table SET name ='retest' WHERE id = :id;
END;