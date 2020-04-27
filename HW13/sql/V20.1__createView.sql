CREATE OR REPLACE VIEW iof_tgr_view AS
    SELECT name, id FROM iof_tgr_table
    GROUP BY name;