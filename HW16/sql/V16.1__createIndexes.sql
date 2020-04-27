/* Single element indexes */
CREATE INDEX public.a_idx ON public.b_tree_index_table(a);
CREATE INDEX public.b_idx ON public.b_tree_index_table(b);
CREATE INDEX public.c_idx ON public.b_tree_index_table(c);

/* Two element indexes */
CREATE INDEX public.ab_idx ON public.b_tree_index_table(a, b);
CREATE INDEX public.ac_idx ON public.b_tree_index_table(a, c);

CREATE INDEX public.ba_idx ON public.b_tree_index_table(b, a);
CREATE INDEX public.bc_idx ON public.b_tree_index_table(b, c);

CREATE INDEX public.ca_idx ON public.b_tree_index_table(c, a);
CREATE INDEX public.cb_idx ON public.b_tree_index_table(c, b);

/* Three element indexes */
CREATE INDEX public.abc_idx ON public.b_tree_index_table(a, b, c);
CREATE INDEX public.acb_idx ON public.b_tree_index_table(a, c, b);

CREATE INDEX public.bac_idx ON public.b_tree_index_table(b, a, c);
CREATE INDEX public.bca_idx ON public.b_tree_index_table(b, c, a);

CREATE INDEX public.cab_idx ON public.b_tree_index_table(c, a, b);
CREATE INDEX public.cba_idx ON public.b_tree_index_table(c, b, a);