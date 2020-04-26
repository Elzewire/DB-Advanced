CREATE FUNCTION public.f_complex_sum(
    c1 public.complex_type,
    c2 public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN ROW(c1.r + c2.r, c1.i + c2.i)::public.complex_type;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.f_complex_sum_final(
    c public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN c;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_sum(public.complex_type) (
    sfunc = public.f_complex_sum,
    stype = public.complex_type,
    combinefunc = public.f_complex_sum,
    finalfunc = public.f_complex_sum_final,
    initcond = '(0, 0)',
    parallel = safe
);


CREATE FUNCTION public.f_complex_sub(
    c1 public.complex_type,
    c2 public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN ROW(c1.r - c2.r, c1.i - c2.i)::public.complex_type;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.f_complex_sub_final(
    c public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN c;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_sub(public.complex_type) (
    sfunc = public.f_complex_sub,
    stype = public.complex_type,
    combinefunc = public.f_complex_sub,
    finalfunc = public.f_complex_sub_final,
    initcond = '(0, 0)',
    parallel = safe
);


CREATE FUNCTION public.f_complex_mul(
    c1 public.complex_type,
    c2 public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN ROW(c1.r * c2.r - c1.i * c2.i, c1.r * c2.i + c2.r * c1.i)::public.complex_type;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.f_complex_mul_final(
    c public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN c;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_mul(public.complex_type) (
    sfunc = public.f_complex_mul,
    stype = public.complex_type,
    combinefunc = public.f_complex_mul,
    finalfunc = public.f_complex_mul_final,
    initcond = '(1, 0)',
    parallel = safe
);


CREATE FUNCTION public.f_complex_div(
    c1 public.complex_type,
    c2 public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN ROW((c1.r * c2.r + c1.i * c2.i) / (c2.r * c2.r + c2.i * c2.i), (c2.r * c1.i - c1.r * c2.i) / (c2.r * c2.r + c2.i * c2.i))::public.complex_type;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION public.f_complex_div_final(
    c public.complex_type
) RETURNS public.complex_type AS
$$
BEGIN
    RETURN c;
END;
$$ LANGUAGE plpgsql;

CREATE AGGREGATE public.complex_div(public.complex_type) (
    sfunc = public.f_complex_div,
    stype = public.complex_type,
    combinefunc = public.f_complex_div,
    finalfunc = public.f_complex_div_final,
    initcond = '(1, 0)',
    parallel = safe
);
