CREATE OR REPLACE RULE redirect_update_to_inherited1
AS ON UPDATE TO inherited_hub
    WHERE OLD.id BETWEEN 1 and 100000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited2
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 100001 and 200000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited3
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 200001 and 300000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited4
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 300001 and 400000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited5
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 400001 and 500000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited6
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 500001 and 600000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited7
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 600001 and 700000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited8
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 700001 and 800000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited9
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 800001 and 900000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;

CREATE OR REPLACE RULE redirect_update_to_inherited10
AS ON UPDATE TO inherited_hub
    WHERE NEW.id BETWEEN 900001 and 1000000
DO INSTEAD
    UPDATE inherited1 SET OLD.id = NEW.id, OLD.name = NEW.name;