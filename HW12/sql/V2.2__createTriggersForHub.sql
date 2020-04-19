CREATE OR REPLACE FUNCTION redirect_updates()
    RETURNS TRIGGER AS
    $BODY$
    DECLARE
        old_child_id integer := DIV(OLD.id, 100000) + 1;
        old_child_name varchar := 'inh_trg_child' || old_child_id;
        new_child_id integer := DIV(NEW.id, 100000) + 1;
        new_child_name varchar := 'inh_trg_child' || new_child_id;
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = new_child_name) THEN
            EXECUTE format('CREATE TABLE %s() INHERITS (%s)', new_child_name, tg_table_name);
            EXECUTE format('ALTER TABLE %s ADD CONSTRAINT partition_check CHECK (id > (%s - 1) * 100000 and id <= %s * 100000)', new_child_name, new_child_id, new_child_id);
            EXECUTE format('CREATE TRIGGER trg_redirect_updates ' ||
                           'BEFORE UPDATE OF id ON %s FOR EACH ROW ' ||
                           'WHEN (OLD.id IS DISTINCT FROM NEW.id)' ||
                           'EXECUTE FUNCTION redirect_updates()', new_child_name);
        END IF;
        EXECUTE format('DELETE FROM %s WHERE id = $1 AND name = $2', old_child_name) USING OLD.id, OLD.name;
        EXECUTE format('INSERT INTO %s VALUES($1, $2)', new_child_name) USING NEW.id, NEW.name;
        RETURN NULL;
    END;
    $BODY$
    LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION redirect_inserts()
    RETURNS TRIGGER AS
    $BODY$
    DECLARE
        child_id integer := DIV(NEW.id, 100000) + 1;
        child_name varchar := 'inh_trg_child' || child_id;
    BEGIN
        IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = child_name) THEN
            EXECUTE format('CREATE TABLE %s() INHERITS (%s)', child_name, tg_table_name);
            EXECUTE format('ALTER TABLE %s ADD CONSTRAINT partition_check CHECK (id > (%s - 1) * 100000 and id <= %s * 100000)', child_name, child_id, child_id);
            EXECUTE format('CREATE TRIGGER trg_redirect_updates ' ||
                           'BEFORE UPDATE OF id ON %s FOR EACH ROW ' ||
                           'WHEN (OLD.id IS DISTINCT FROM NEW.id)' ||
                           'EXECUTE FUNCTION redirect_updates()', child_name);
        END IF;
        EXECUTE format('INSERT INTO %s VALUES($1, $2)', child_name) USING NEW.id, NEW.name;
        RETURN NULL;
    END;
    $BODY$
    LANGUAGE plpgsql;


CREATE TRIGGER trg_redirect_inserts
    BEFORE INSERT ON hub_for_trg FOR EACH ROW
    EXECUTE FUNCTION redirect_inserts();
