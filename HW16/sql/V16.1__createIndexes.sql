/* Single element indexes */
CREATE INDEX a_idx ON public.b_tree_index_table(a);
CREATE INDEX b_idx ON public.b_tree_index_table(b);
CREATE INDEX c_idx ON public.b_tree_index_table(c);

/* Two element indexes */
CREATE INDEX ab_idx ON public.b_tree_index_table(a, b);
CREATE INDEX ac_idx ON public.b_tree_index_table(a, c);

CREATE INDEX ba_idx ON public.b_tree_index_table(b, a);
CREATE INDEX bc_idx ON public.b_tree_index_table(b, c);

CREATE INDEX ca_idx ON public.b_tree_index_table(c, a);
CREATE INDEX cb_idx ON public.b_tree_index_table(c, b);

/* Three element indexes */
CREATE INDEX abc_idx ON public.b_tree_index_table(a, b, c);
CREATE INDEX acb_idx ON public.b_tree_index_table(a, c, b);

CREATE INDEX bac_idx ON public.b_tree_index_table(b, a, c);
CREATE INDEX bca_idx ON public.b_tree_index_table(b, c, a);

CREATE INDEX cab_idx ON public.b_tree_index_table(c, a, b);
CREATE INDEX cba_idx ON public.b_tree_index_table(c, b, a);