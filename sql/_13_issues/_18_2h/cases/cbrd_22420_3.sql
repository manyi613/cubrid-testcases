autocommit off;
set  system parameters 'dont_reuse_heap_file=yes';
drop table if exists t1;
create table t1(  a char(1200),   b varchar(1200),  c nchar(1200),  d NCHAR VARYING(1200),  e BIT(1200),  f BIT VARYING(1200),  g int,  h SMALLINT,  i BIGINT,  j NUMERIC,  k FLOAT,  l DOUBLE,  m MONETARY,  n DATE,  o TIME,  p TIMESTAMP,  q DATETIME);

insert into t1 values (
'1234567890',
'1234567890',
N'abc',
N'ABC',
B'1111111111',
B'1111111111',
10,
255,
9223372036854775807,
0,
0,
0,
-100,
DATE '2008-10-31',
TIME '00:00:00',
TIMESTAMP '2010-10-31 01:15:45',
DATETIME  '2008-10-31 13:15:45');

insert into t1 values (null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);

create index i_t1_a2q on t1(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q) where a>'0' with online;

create index i_t1_a2p on t1(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p) where a>'0' with online;

create index i_t1_a2o on t1(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o) where a>'0' with online;
rollback;
autocommit on;
