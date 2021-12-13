Create table Region(id int primary key,name varchar(50));
Create table Countries(id varchar(50) primary key,name varchar(50),region_id int,foreign key(region_id) references region(id));
Create table location(id varchar(50) primary key,street_address varchar(50),postal_code varchar(50),city varchar(50),state varchar(50),country_id varchar(50),foreign key(country_id) references countries(id));
Create table department(id int primary key,name varchar(50),location_id varchar(50),foreign key(location_id) references location(id));
Create table employee(id int primary key,first_name varchar(50),last_name varchar(50),email varchar(50),phone_number varchar(50),hire_datet date,salary int,date_of_birth date,department_id int ,foreign key(department_id) references department(id));
Create table manager(employee_id int,department_id int,primary key(employee_id,department_id),foreign key(employee_id) references employee(id),foreign key(department_id) references department(id));
insert into Region values(1,'Europe');
insert into region values(2,'Americas');
insert into region values(3,'Asia');
insert into region values(4,'Middle east and africa');
select * from region;
insert into Countries values('AR','ARgentina',2);
insert into Countries values('AU','Australia',3);
insert into Countries values('BE','Belgium',1);
insert into Countries values('BR','BRAZIL',2);
insert into Countries values('CA','Canada',2);
insert into Countries values('CH','Switzerland',1);
insert into Countries values('CN','China',3);
insert into Countries values('DE','Germany',1);
insert into Countries values('DK','Denmark',1);
insert into Countries values('EG','Egpty',4);
insert into Countries values('FR','France',1);
insert into Countries values('HK','Hongkong',3);
insert into Countries values('IL','Isreal',4);
insert into Countries values('IN','India',3);
insert into Countries values('IT','Italy',1);
insert into Countries values('JP','Japan',3);
insert into Countries values('KW','Kuwait',4);
insert into Countries values('Mx','Mexico',2);
insert into Countries values('NG','Nigeria',4);
insert into Countries values('NL','Netherlands',1);
insert into Countries values('SG','Singapore',3);
insert into Countries values('UK','United Kingdom',1);
insert into Countries values('US','United States ofAmerica',2);
insert into Countries values('ZM','ZAMBIA',4);
insert into Countries values('zw','Zimbabwe',4);
select * from countries;
insert into location values(1000, '1297 via cola di rie',989, 'Roma','Roma','IT');
insert into location values(1100,'93091 Calle della testa', 10934,'Venice','venice','IT');
insert into location values(1200,'2017 ShinJUKU-KU',1689,'Tokyo','Tokyo prefecture','JP');
insert into location values(1300,'9450 Kamya-Cho',6823,'Hiroshima','hiroshi','JP');
insert into location values(1400,'2014 Jabberwocky RD', 26192, 'South lake','Texas','US');
insert into location values(1500,'2011 Interiors BLVD',99236,'South sanFrancisco','California','US');
insert into location values(1600,'2007 Zagora ST',50090,'South bruncswick','New Jersey','US');
insert into location values(1700,'2004 Charade Rd',98199,'Seattle','washington','US');
insert into location values(1800,'147 Spadna Ave','MSV 2L7','Toronto','Ontario','CA');
insert into location values(1900,'6092-BoXwood ST','YSW 9T2','Whitehorse','Yukon','CA');
insert into location values(2000,'40-5-12 Laogianggen',190518,'Beijing','Beijing','CN');
insert into location values(2100, '1298 VILEPARLE ed',490231,'BOMBAY','Maharasthra','IN');
insert into location values(2200,'12-98 Victoria Street',2901,'Sydney','New South wales','AU');
insert into location values(2300,'198 Clementi North',540198,'Singapore','Singapore','SG');
insert into location values(2400,'B204 Arthur ST',2345,'London','LOndon','UK');
insert into location values(2500,'Magdalen Center','The Oxford','OX9 9ZB','Oxford','UK');
insert into location values(2600,'9702 Chester Road',9629850293,'Stretford','Manchester','UK');
insert into location values(2700,'Schwanthalerstr, 7301',80925,'Munich','Bavaria','DE');
insert into location values(2800,'RUA FREI Caneca 1360','01307-002','SAO Paulo','SAOPaulo','BR');
insert into location values(2900,'20 RUE DES Corps-Saints',1730,'Geneva','Geneve','CH');
insert into location values(3000,'MURTENSTRASSE 921',3095,'BERN','BE','CH');
insert into location values(3100,'PIETER BREUGHELSTRAATB37','3029SK','UTRECHIT','UTRECHIT','NL');
insert into location values(3200,'MARIANO ESCOBEDO 9991',11932,'Mexico city','Distritofederal','Mx');
select * from location;
insert into department values (1,'Accounts',1000);
insert into department values(2,'HR',1600);
insert into department values(3,'Business Development',1800);
insert into department values(4,'IT Support',2400);
insert into department values(5,'IT',3200);
select * from department;
Insert into employee values(1,'anu','sharma','anu@gmail.com',9864675634,'13-08-2015',20000,'12-01-1994',5);
Insert into employee values(2,'ananthi','sharma','ananthi@gmail.com',8608491910,'03-08-2015',22000,'21-03-1994',3);
Insert into employee values(3,'amarnath','pillai','amarnath@gmail.com',7894589654,'03-07-2004',38000,'12-01-1992',4);
Insert into employee values(4,'clinton','pritheev','clinton@gmail.com',7708480901,'01-06-2015',23000,'05-09-1994',2);
Insert into employee values(5,'collin','paul','collin@gmail.com',9842524655,'02-06-2014',30500,'26-12-1993',1);
Insert into employee values(6,'haritha','mohan','haritha@gmail.com','7710589123','22-07-2014','41000','12-06-1993',4);
Insert into employee values(7,'shrihari','pillai','shrihari@gmail.com','9842512456','01-07-2015','21000','01-05-1994',2);
Insert into employee values(8,'jeeva','annath','jeeva@gmail.com','8608491912','02-06-2013','28000','23-12-1991',3);
Insert into employee values(9,'jimesh','sharma','jimesh@gmail.com','9634565231','06-05-2012','51000','28-10-1992',1);
Insert into employee values(10,'giruba','dharan','giri@gmail.com','9842524655','02-06-2012','24000','22-11-1990',2);
Insert into employee values(11,'karthiga','pillai','karthi@gmail.com','8608491510','04-08-2013','32000','26-08-1993',4); 
insert into employee values(12,'MADHU','SHARMA','MADHU@GMAIL.COM',9865478963,'03-06-2014',34000,'01-05-1995',2);
insert into employee values(13,'MADHAN','KUMAR','MADHAN@GMAIL.COM',8608491810,'02-06-2014',25500,'11-01-1993',3);
insert into employee values(14,'MALINI','KENNEDY','MALINI@GMAIL.COM',9965684384,'03-06-2015',27800,'02-01-1994',2);
insert into employee values(15,'PRAVEEN','SINGH','PRAVEEN@GMAIL.COM',9842578910,'02-09-2015',32800,'18-08-1993',4);
insert into employee values(16,'PRABHA','MURUGAN','PRAGHA@GMAIL.COM',9865478963,'03-06-2013',25000,'01-05-1994',2);
insert into employee values(17,'PRADEEP','SINGH','PRADEEP@GMAIL.COM',8604527865,'02-10-2004',76000,'23-12-1981',3);
insert into employee values(18,'PERICHI','PILLAI','PERICHI@gmail.com',9842578910,'02-09-2015',31780,'28-08-1993',4);
insert into employee values(19,'PUNITHA','SHARMA','PUNITHA@gmail.com',9865478963,'03-06-2008',44148,'01-05-1984',2);
insert into employee values(20,'SIVA','PILLAI','SIVA@gmail.com',9845612458,'02-06-2013',19348,'23-12-1991',3);
insert into employee values(21,'THANA','RATHINAM','PRAGHA@gmail.com',9865478963,'03-06-2013',14148,'01-05-1994',2);
insert into employee values(22,'YOGESH','SINGH','PRADEEP@gmail.com',8604527865,'02-06-2013',20348,'23-12-1991',3);
insert into employee values(23,'VIDYA','SINGH','PERICHI@gmail.com',9842578910,'02-09-2014',21780,'16-08-1993',4);
select * from employee; 
Insert into manager(department_id,employee_id) values(1,9);
Insert into manager(department_id,employee_id) values(2,19);
Insert into manager(department_id,employee_id) values(2,4);
Insert into manager(department_id,employee_id) values(3,17);
Insert into manager(department_id,employee_id) values(3,8);
Insert into manager(department_id,employee_id) values(4,15);
Insert into manager(department_id,employee_id) values(5,1);
select * from manager;
/* Workouts*/
/*Write a query to display the id, entire street address and the first word of the 
street address of all entries in the location table. Give an alias to the first word 
as 'first_word'. Display the records sorted in ascending order based on 
first_word.*/
SELECT id, street_address, SUBSTR(street_address,1, INSTR(street_address, ' ')-1) AS first_word FROM location order by first_word;
/*Write a query to display the names of all states belonging to the country 
Canada. Display the records sorted in ascending order based on state 
name.*/
select state from location where country_id='CA' order by state;
/*Write a query to display the first name of the managers of Accounts 
department. Display the records sorted in ascending order based on manager 
name.*/
select first_name as manager_name from employee where employee.id=(select employee.id from employee 
join manager on employee.id=manager.employee_id where employee.department_id=1) order by first_name;
/*.Write a query to display the id,entire street address and the last word of the 
street address of all entries in the location table. Give an alias to the last word 
as 'last_word'. Display the records sorted in ascending order based on 
last_word*/
SELECT id, street_address, SUBSTR(street_address, INSTR(street_address,' ',-1)+1) AS last_word FROM location order by last_word;
/*Write a query to find the first name and department name of employees who 
work in city London. Display the records sorted in ascending order based on 
first name.*/
SELECT first_name,name from employee inner join department on department.id=employee.department_id inner join location on location.id=department.location_id where city='London';
/*Write a query to display the addresses (location id, street_address, city,
state_province, country_name) of all the entries in the location 
table.Display the records sorted in ascending order based on location id.*/
SELECT location.id,street_address,city,state,name from location inner join countries on location.country_id=countries.id order by location.id ;

select first_name as manager_name from employee where employee.id=(select employee.id from employee join manager on employee.id=manager.employee_id where employee.department_id=2) order by first_name;

select first_name as  manager_name,employee.id from employee join manager on employee.id=manager.employee_id order by employee.first_name;

select employee.id,first_name from employee join manager on employee.id=manager.employee_id where employee.department_id=2;
/*Write a query to display the names of all countries belonging to region Europe. 
Display the records sorted in ascending order based on country name*/
select countries.name from countries join region on countries.region_id=region.id where region.name='Europe' order by countries.name; 
/*Write a query to display the names of departments that have multiple 
managers. Display the records sorted in ascending order based on department 
name.*/
select name from department inner join manager on department.id=manager.department_id group by name having count(department_id)>1 order by department.name;
/*Write a query to display the department name and the number of managers in 
the department. Display the records sorted in ascending order based on 
department name. Give an alias to the number of managers as 
manager_count.*/
select name, count(department_id) as manager_count from department inner join manager on department.id=manager.department_id group by name order by name;
/*Write a query to find the addresses (department name, location id as id , 
street_address, city, state_province, country_name) of all the departments. 
Display the records sorted in ascending order based on department 
name.*/
select department.name,Location_Id as Id,street_address,city,state,countries.name  from  department inner join location on department.location_id=location.id inner join countries on countries.id=location.country_id order by department.name;
/*.Write a query to display the first name and salary for all employees. 
Format the salary to be 10 characters long, left-padded with the $ symbol. 
Display the records sorted in ascending order based on first name */
select first_name,LPAD(salary,10,'$')from employee order by first_name;
select first_name,RPAD(salary,10,'$')from employee order by first_name;

/*Write a query to display the first name and the last 5 characters of phone 
numbers of all employees. Display the records sorted in ascending order 
based on first name. Give an alias to the last 5 characters of phone 
number as phone_number */

SELECT first_name,SUBSTR(phone_number,6,10) AS phone_number FROM employee order by first_name;

/*.Write a query to display the location_id, street_address, city, 
state_province, country_name, region_name of all the entries in the 
location table.Display the records sorted by location_id.
[Use Left Join]*/
SELECT location.id,street_address,city,state,countries.name as country_name,region.name as region_name from location left join countries on location.country_id=countries.id left join region on countries.region_id=region.id order by location.id ;
/*Write a query to display the department name and the first name of 
managers of all departments. Display the records sorted in ascending 
order based on department name and then by manager name.[Use inner 
join or join]*/

commit;
