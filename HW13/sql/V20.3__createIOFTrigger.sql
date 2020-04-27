CREATE OR REPLACE FUNCTION insert_into_view()
    RETURNS TRIGGER AS
    $BODY$
        BEGIN
            INSERT INTO iof_trg_table VALUES (NEW.id, NEW.name);
            RETURN NEW;
        END;
    $BODY$
    LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_into_view
    INSTEAD OF INSERT ON iof_trg_view
    FOR EACH ROW EXECUTE FUNCTION insert_into_view();