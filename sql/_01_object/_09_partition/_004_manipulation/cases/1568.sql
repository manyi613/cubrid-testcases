--create range partition table with time data type and one partition,then insert data to this table,the inserted separator field values are less than boundary value

create table range_test(id int not null ,	
				test_time time,
				test_date date,
				test_timestamp timestamp,
                                primary key (id, test_time))
		PARTITION BY RANGE (test_time) (
		PARTITION p0 VALUES LESS THAN ('09:00:00 AM')
	);
	insert into range_test values(1,'06:00:00','2005-01-01','2005-01-01 09:00:00');
	insert into range_test values(2,'07:00:00','2005-06-01','2005-06-01 09:00:00');
	insert into range_test values(3,'08:00:00','2005-12-01','2005-12-01 09:00:00');


select * from range_test order by 1;	


drop table range_test;
