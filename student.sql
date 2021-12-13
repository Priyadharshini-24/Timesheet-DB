create TABLE student(Id int,name varchar2(33));
ALTER TABLE student ADD address varchar2(40);
DESCRIBE student;
INSERT INTO student VALUES (1201,'Priya','Ramnad');
INSERT INTO student VALUES (1202,'Dharshini','Thindukkal');
INSERT INTO student VALUES (1203,'Keerthi','Chennai');
INSERT INTO student VALUES (1204,'Meenu','Madurai');
INSERT INTO student VALUES (1205,'Vishali','Ramnad');
INSERT INTO student (address) VALUES ('Ramnad');
ALTER TABLE student DROP COLUMN address;
ALTER TABLE student ADD PRIMARY KEY(Id);
INSERT INTO student VALUES ('1206','Priya','Ramnad');
SELECT * FROM student ORDER BY Id;
DELETE FROM student WHERE Id=1205;
UPDATE student SET address='Dindigul' WHERE Id=1202;

/*another table */

CREATE TABLE purchase (Sno int,Purchase_item varchar(20),Purchase_Type varchar(20),Rate int);
INSERT INTO purchase values(1,'mobile','electric appliances',15000);
INSERT INTO purchase values(3,'laptop','electric appliances',65000);
INSERT INTO purchase values(2,'shoe','Material',1000);
INSERT INTO purchase values(5,'mobile','electric appliances',17000);
INSERT INTO purchase values(4,'handbag','Material',600);


delete from purchase where Sno=1;
select * from purchase order by Sno;
select Purchase_type,sum(Rate) as Total from purchase Group By Rollup(Purchase_type);

UPDATE Purchase set purchase_item='mobile' where sno=1;
commit;