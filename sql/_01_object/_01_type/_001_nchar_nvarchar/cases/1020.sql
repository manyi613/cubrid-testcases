-- [er]create table with nchar VARYING data type and insert TIMESTAMP data


CREATE CLASS t1(
   col1       nchar VARYING(20)
);

INSERT INTO t1 VALUES (TIMESTAMP '01/31/1994 8:15:00 pm');

drop t1;