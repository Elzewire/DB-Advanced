\set ninserts :scale
\set id random(1, :ninserts)
BEGIN;
    UPDATE mydb.public.logged_table SET name ='retest' WHERE id = :id;
END;