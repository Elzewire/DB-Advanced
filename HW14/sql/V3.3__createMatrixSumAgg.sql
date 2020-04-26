CREATE FUNCTION public.f_sum_matrices(
    m1 integer[][],
    m2 integer[][]
) RETURNS integer[][] AS
$$
DECLARE
    sum integer[][];
BEGIN
    IF array_dims(m1) != array_dims(m2) THEN
        RAISE EXCEPTION 'Matrices must have same dimensions!';
    END IF;
    FOR i IN array_lower(m1, 1)..array_upper(m1, 1) LOOP
        FOR j IN array_lower(m1, 2)..array_upper(m1, 2) LOOP
            sum[i][j] := m1[i][j] + m2[i][j];
        END LOOP;
    END LOOP;
    RETURN sum;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.f_sum_matrices_final(
    m integer[][]
) RETURNS integer[][] AS
$$
BEGIN
    RETURN m;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.sum_matrices(integer[][]) (
    sfunc = public.f_sum_matrices,
    stype = integer[][],
    combinefunc = public.f_sum_matrices,
    finalfunc = public.f_sum_matrices_final,
    parallel = safe
);
