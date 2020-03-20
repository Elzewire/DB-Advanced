DROP TABLE logged_table;
DROP TABLE unlogged_table;

CREATE TABLE logged_table(
    id SERIAL,
    name varchar
);

CREATE UNLOGGED TABLE unlogged_table(
    id SERIAL,
    name varchar
);
