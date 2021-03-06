--+ holdcas on;
--Grant user all privilege on two specifically class


CALL login('dba','') ON CLASS db_user;
CREATE CLASS DCL1 (id INTEGER);
CREATE CLASS DCL2 (id INTEGER);


CALL add_user('DCL_USER1','DCL1') ON CLASS db_user;
GRANT ALL PRIVILEGES ON DCL1, DCL2 TO DCL_USER1;
CALL login('DCL_USER1','DCL1') ON CLASS db_user;
INSERT INTO DCL1(id) VALUES(1);
UPDATE DCL1 SET id=2 WHERE id=1;
SELECT id FROM DCL1;
DELETE FROM DCL1 WHERE id=1;
INSERT INTO DCL2(id) VALUES(1);
UPDATE DCL2 SET id=2 WHERE id=1;
SELECT id FROM DCL2;
DELETE FROM DCL2 WHERE id=1;
CALL login('dba','') ON CLASS db_user;
CALL drop_user('DCL_USER1') ON CLASS db_user;



DROP CLASS DCL1, DCL2;

--+ holdcas off;
