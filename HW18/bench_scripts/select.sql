BEGIN;
    SELECT *
        FROM t1
            INNER JOIN t2 ON t1.id = t2.id
            INNER JOIN t3 ON t2.id = t3.id
            INNER JOIN t4 ON t3.id = t4.id
            INNER JOIN t5 ON t4.id = t5.id
            INNER JOIN t6 ON t5.id = t6.id
            INNER JOIN t7 ON t6.id = t7.id
            INNER JOIN t8 ON t7.id = t8.id
END;