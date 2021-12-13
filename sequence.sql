--create SEQUENCE id 
--start with 101 
--increment by 1;

create table training_details(id number,name varchar2(50),description varchar2(50),standard_cost number,fee number,Trainer_id number);
drop table training_details;
--insert into training_details VALUES(ID.nextval,'Priya','Fullstack');
--insert into training_details VALUES(ID.nextval,'Meena','Fullstack');
select * from training_details;
commit;
