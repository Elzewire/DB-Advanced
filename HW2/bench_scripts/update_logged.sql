\set id random(1, 107221)
BEGIN;
    UPDATE public.logged_table SET name ='retest' WHERE id = :id;
END;