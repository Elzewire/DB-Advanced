BEGIN;
    INSERT INTO public.logged_table VALUES (:id, 'test');
END;