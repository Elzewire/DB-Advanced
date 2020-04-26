INSERT INTO public.complex_table
    SELECT (random()*1000)::integer, (random() * 100, random() * 100)::public.complex_type
        FROM generate_series(1, 1000) AS g(i);