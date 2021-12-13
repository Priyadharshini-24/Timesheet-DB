create table PROGRAMMER( Programmer_Name  VARCHAR2(20), DOB    DATE, DO_Joining    DATE,SEX    VARCHAR2(1),PROF1  VARCHAR2(10),PROF2  VARCHAR2(10),SALARY NUMBER);
drop table PROGRAMMER;
create table SOFTWARE(Programmer_Name  VARCHAR2(20), TITLE  VARCHAR2(30), DEV_IN VARCHAR2(10),SCOST NUMBER,DCOST NUMBER,SID NUMBER);

create table STUDIES(Programmer_Name  VARCHAR2(20),SPLACE VARCHAR2(15),COURSE VARCHAR2(15),CCOST  NUMBER(7));
/*explicit*/
insert into PROGRAMMER values('ANAND','21-05-66','21-04-92','M','pascal','Basic',NULL);
insert into PROGRAMMER(Programmer_Name,DOB,DO_Joining,SEX,PROF1,PROF2,SALARY) values('ANAND','21-05-66','21-04-92','M','pascal','Basic',3500);
/*implicit*/
insert into PROGRAMMER(Programmer_Name,DOB,DO_Joining,SEX,PROF1,PROF2) values('Ramesh','21-06-67','21-05-93','M','cobol','dbase');
insert into PROGRAMMER values('Priya','24-02-98','18-10-21','F','oracle','java',4500);
insert into PROGRAMMER values('Meena','24-May-98','18-Nov-21','F','sql','Dbase',4800);
insert into PROGRAMMER values('Dharshini','05-05-99','18-10-21','F','pascal','c',4400);

DESCRIBE PROGRAMMER;
/*update multiple column values*/
update programmer  set Programmer_Name='Karthi',DOB='23-09-97',DO_Joining='16-11-20',PROF1='assembly',PROF2='c' where salary=3500;
update programmer set salary=4000 where Programmer_Name='ANAND';
update programmer set salary=4300 where Programmer_Name='Ramesh';
update programmer set salary=4000 where Programmer_Name='Ramesh';
update programmer set salary=4350 where programmer_name='Karthi';
select * from Programmer;
select * from Programmer order by salary;
/*projection*/
select Programmer_Name,DOB,DO_Joining from programmer;
/*using Distinct*/
select distinct prof1 from programmer;
select Programmer_Name,DOB,DO_Joining from programmer where salary=4000;
/*join and using concadenation operator*/
select  Programmer_Name||sex from Programmer;
delete from programmer where programmer_name='ANAND'; 
insert into software values('ANAND','PARACHUTES','BASIC',400,6000,43);
insert into software values('KAMALA','PAYROLL PACKAGE','DBASE',9000,20000,7);
insert into software values('MARY','FINACIAL ACC S/W','ORACLE',18000,85000,4);
insert into software values('REBECCA','PC UTILITIES','C',725,5000,51);
insert into software values('Karthi','INVOICES','ORACLE',700,20000,10);
insert into software values('Ramesh','TSR HELP PACKAGE','ASSEMBLY',2500,600,6);
insert into software values('Priya','HOSPITAL MANAGEMENT','PASCAL',1100,75000,2);
insert into software values('Dharshini','ISK EDITOR','C',900,700,6);
insert into software values('Meena','TSR HELP PACKAGE','ASSEMBLY',2500,600,6);

insert into software values('RAMESH','INVENTORY CONTROL SYSTEM','COBOL',3000,3500,0);
select * from software where dev_in='COBOL';
select * from software;
delete from software where programmer_name='MARY';
