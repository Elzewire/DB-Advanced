CREATE OR REPLACE VIEW iof_trg_view AS
    SELECT name, sum(id) FROM iof_trg_table
    GROUP BY name;