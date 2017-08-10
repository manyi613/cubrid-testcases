--SERVER
create class t (i int, j int);

insert into t values (1, 4);
insert into t values (2, 5);
insert into t values (3, 6);
insert into t values (4, 7);
insert into t values (5, 8);

delete t1 from t inner join (select * from t where j > 6) t1 on t.i=t1.j;
select * from t order by 1;

delete t from t inner join (select * from t where j > 4) t1 on t.i=t1.j;
select * from t order by 1;

drop class t;