BEGIN;
    SELECT min(a) OVER(PARTITION BY b, c ORDER BY b, c)
        FROM b_tree_index_table
    ORDER BY c, b;
END;