-- [er]create vclass using two queries and with a insert query

create class xoo ( id int auto_increment , title varchar(100));
create unique index uni_id on xoo (id);

insert into xoo(title) values ('aaa');
insert into xoo(title) values ('bbb');
insert into xoo(title) values ('ccc');

create vclass vxoo (
	id int, 
	title varchar(100)
) as insert into xoo(title) values ('ddd') UNION ALL SELECT * FROM xoo WHERE id=2;

select * from vxoo;
drop vclass vxoo;

drop class xoo;