CREATE SERVER foreign_server FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host'localhost', port'5432', dbname'postgres');

CREATE USER MAPPING FOR postgres SERVER foreign_server
OPTIONS (user'postgres', password'postgres');

CREATE FOREIGN TABLE public.f_table1 (
    id integer,
    content varchar
) SERVER foreign_server OPTIONS (schema_name'foreign1', table_name'table');

CREATE FOREIGN TABLE public.f_table2 (
    id integer,
    content varchar
) SERVER foreign_server OPTIONS (schema_name'foreign2', table_name'table');

CREATE FOREIGN TABLE public.f_table3 (
    id integer,
    content varchar
) SERVER foreign_server OPTIONS (schema_name'foreign3', table_name'table');