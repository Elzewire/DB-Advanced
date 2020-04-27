CREATE TABLE public.b_tree_index_table(
  a integer,
  b integer,
  c integer
);

INSERT INTO public.b_tree_index_table
    SELECT (random() * 1000)::integer, (random() * 1000)::integer, (random() * 1000)::integer
        FROM generate_series(1, 1000) as g(i);