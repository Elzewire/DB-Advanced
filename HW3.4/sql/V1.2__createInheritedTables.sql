CREATE TABLE inherited_hub (
    id integer,
    name varchar
);

CREATE TABLE inherited1() INHERITS (inherited_hub);
CREATE TABLE inherited2() INHERITS (inherited_hub);
CREATE TABLE inherited3() INHERITS (inherited_hub);
CREATE TABLE inherited4() INHERITS (inherited_hub);
CREATE TABLE inherited5() INHERITS (inherited_hub);
CREATE TABLE inherited6() INHERITS (inherited_hub);
CREATE TABLE inherited7() INHERITS (inherited_hub);
CREATE TABLE inherited8() INHERITS (inherited_hub);
CREATE TABLE inherited9() INHERITS (inherited_hub);
CREATE TABLE inherited10() INHERITS (inherited_hub);

ALTER TABLE inherited1 ADD CONSTRAINT partition_check
CHECK (id > 0 and id <= 100000);
ALTER TABLE inherited2 ADD CONSTRAINT partition_check
CHECK (id > 100000 and id <= 200000);
ALTER TABLE inherited3 ADD CONSTRAINT partition_check
CHECK (id > 200000 and id <= 300000);
ALTER TABLE inherited4 ADD CONSTRAINT partition_check
CHECK (id > 300000 and id <= 400000);
ALTER TABLE inherited5 ADD CONSTRAINT partition_check
CHECK (id > 400000 and id <= 500000);
ALTER TABLE inherited6 ADD CONSTRAINT partition_check
CHECK (id > 500000 and id <= 600000);
ALTER TABLE inherited7 ADD CONSTRAINT partition_check
CHECK (id > 600000 and id <= 100000);
ALTER TABLE inherited8 ADD CONSTRAINT partition_check
CHECK (id > 700000 and id <= 100000);
ALTER TABLE inherited9 ADD CONSTRAINT partition_check
CHECK (id > 800000 and id <= 100000);
ALTER TABLE inherited10 ADD CONSTRAINT partition_check
CHECK (id > 900000 and id <= 1000000);