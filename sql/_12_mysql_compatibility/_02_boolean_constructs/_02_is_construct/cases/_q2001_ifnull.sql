SELECT IFNULL(true,false) from db_root;
select IFNULL(sign(5-2)>0,111) from db_root;
SELECT LPAD('123', IFNULL(5,2), 'X') FROM db_root;


select IFNULL(1,IFNULL(2,IFNULL(2,3))) from db_root;
select IFNULL(NULL,IFNULL(null,5)) from db_root;


select IFNULL(-9223372036854775807+9223372036854775808,null) from db_root;
select IFNULL(9223372036854775807+9223372036854775808,null) from db_root;
select IFNULL(-9223372036854775807-9223372036854775808,null) from db_root;
select IFNULL(9223372036854775807-9223372036854775808,null) from db_root;

select IFNULL(-9223372036854775807+9223372036854775808,null) | -1 from db_root;
select IFNULL(9223372036854775807+9223372036854775808,null) & -1 from db_root;
select IFNULL(-9223372036854775807-9223372036854775808,null) ^ -1 from db_root;
select IF(IFNULL(9223372036854775807-9223372036854775808,null) =-1,111,222) from db_root;