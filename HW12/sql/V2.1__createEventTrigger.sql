CREATE TABLE ddl_log(
    event_date timestamp,
    username varchar,
    table_name varchar
);

CREATE OR REPLACE FUNCTION log_create()
    RETURNS event_trigger LANGUAGE plpgsql AS
    $$
    DECLARE
        obj record;
    BEGIN
        FOR obj IN SELECT * FROM pg_event_trigger_ddl_commands()
        LOOP
            INSERT INTO ddl_log VALUES(current_timestamp, user, obj.object_identity);
        END LOOP ;
    END;
    $$;

CREATE EVENT TRIGGER trg_log_create ON ddl_command_end
    WHEN tag IN ('CREATE TABLE')
    EXECUTE FUNCTION log_create();


