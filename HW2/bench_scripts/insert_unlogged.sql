BEGIN;
    INSERT INTO public.unlogged_table VALUES (:id, 'test');
END;