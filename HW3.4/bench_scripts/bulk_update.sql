\set id random(700001, 800000)
BEGIN;
    UPDATE inherited_hub SET name ='retest', id = (:id + 100000) WHERE id = :id;
END;