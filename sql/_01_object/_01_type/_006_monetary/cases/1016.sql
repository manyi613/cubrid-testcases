--  create table with monetary data type and insert numberic data


CREATE CLASS t1(
   col1       monetary
);

INSERT INTO t1 VALUES (1111111111);

drop t1;