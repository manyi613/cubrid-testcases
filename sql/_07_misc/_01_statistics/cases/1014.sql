--Optimizing two class using update statistics

CREATE CLASS DCL1 (id INTEGER);	
CREATE CLASS DCL2 (id INTEGER);	

UPDATE STATISTICS ON DCL1, DCL2;	

DROP CLASS DCL1;	
DROP CLASS DCL2;
