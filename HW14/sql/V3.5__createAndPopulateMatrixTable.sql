CREATE TABLE public.matrix_table(
    id integer,
    mtrx integer[5][5]
);

INSERT INTO public.matrix_table
    SELECT (random()*1000)::integer, ARRAY[
            [(random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer],
            [(random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer],
            [(random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer],
            [(random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer],
            [(random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer, (random() * 10)::integer]
        ]
        FROM generate_series(1, 1000) AS g(i);
