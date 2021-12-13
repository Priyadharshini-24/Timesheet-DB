create table products(product_id varchar2(10) primary key,product_name varchar2(18),description VARCHAR2(100),standard_cost number(10),list_price number(10),category_id NUMBER(4));
desc products;
create table employees(employee_id varchar2(10) primary key,first_name varchar2(18),last_name varchar2(10),email varchar2(30),phone varchar2(10),hire_date date,manager_id varchar2(10),job_title varchar2(10));
desc employees;
create table customers(customer_id varchar2(10) primary key,name varchar2(18),address varchar2(50),website varchar2(20),credit_limit number);
desc customers;
create table orders(order_id varchar2(10) primary key,customer_id varchar2(10),foreign key(customer_id) references customers(customer_id),status varchar2(15),salesman_id number,order_date date);
alter table orders modify salesman_id varchar2(10);
alter table orders add foreign key(salesman_id) references employees(employee_id);
desc orders;
create table order_items(order_id varchar2(10),foreign key(order_id)REFERENCES orders(order_id),item_id varchar2(10) primary key,product_id VARCHAR2(10),quantity number,unit_price number);
alter table order_items add foreign key(product_id) references products(product_id);
desc order_items;
insert into products values('P001','Sofa','Leather Sofa color red',8000,9000,011);
delete products where product_id='P005';
insert into products values('P002','Chair','Baby Chair color pink',5000,5500,012);
insert into products values('P003','Shoes','Sport Shoes',3000,3500,013);
insert into products values('P004','Camera','Sony Camera',5000,6000,014);
insert into products values('P005','HandyCam','Hitachi HandyCam',5000,6000,015);
insert into products values('P006','chair','classic wood chair',4000,4200,016);
insert into products values('P007','chair','magazine chair',4100,4300,017);
insert into products values('P008','drawer','single wooden drawer',4500,4600,018);
insert into products values('P009','back bag','blue college back bag',900,1000,019);
insert into products values('P010','sunglass','trend sunglass color green',800,850,020);
insert into products values('P011','watch','black analog watch',400,450,021);
insert into products values('P012','watch','white analog watch',300,350,022);
insert into products values('P013','watch','red analog watch',360,380,023);
insert into products values('P014','sunglass','trend sunglass color yellow',200,210,024);
insert into products values('P015','sunglass','trend sunglass color pink',310,320,025);

commit;
insert into employees values('E001','riya','ravi','riyaravi24@gmail.com','6385561837','18-10-2021',31,'sales');
delete employees where employee_id='E004';
insert into employees values('E002','dharshini','nagendran','dharshininagen05@gmail.com','6145561837','18-10-2021',32,'Accountant');
insert into employees values('E003','vishali','ravi','vishaliravi@gmail.com','6789564321','18-10-2021',31,'cashier');
delete employees where employee_id='E009';
insert into employees values('E004','keerthana','gurusamy','keerthanagurusamy@gmail.com','9956561837','19-10-2021',33,'sales');
insert into employees values('E005','meenambigai','karunakarn','meenambigaikaruna@gmail.com','9944531856','19-10-2021',31,'cashier');
insert into employees values('E006','deepak','karan','deepakkaran@gmail.com','9234531756','21-10-2020',34,'attendant');
insert into employees values('E007','krishna','kumar','krishna@gmail.com','7832435679','19-08-2020',35,'manager');
insert into employees values('E008','dharshan','ravi','dharshanravi@gmail.com','7334546712','12-06-2020',34,'stockclerk');
insert into employees values('E009','vivek','anbu','vivekanbu@gmail.com','9167653175','18-08-2015',33,'sales');
insert into employees values('E010','ilango','m','elanm@gmail.com','9884531446','02-04-2015',35,'Depmanager');

insert into customers values('C001','vaideki','305 - 14th Ave. S. Suite 3B','www.amazon.com',5000);
insert into customers values('C002','maran','Keskuskatu 45','www.amazon.com',4000);
insert into customers values('C003','vijay','ul. Filtrowa 68','www.amazon.com',5000);
insert into customers values('C004','surya','308- 18 th ave .suite 4B','www.amazon.com',4000);
insert into customers values('C005','arjun','Skagen 21','www.amazon.com',4800);
insert into customers values('C006','harsan','Mataderos 2312','www.amazon.com',5000);
insert into customers values('C007','aryan','120 Hanover Sq','www.amazon.com',4000);
insert into customers values('C008','megna','12, rue des Bouchers','www.amazon.com',3000);
insert into customers values('C009','mahir','Fauntleroy Circus','www.amazon.com',6000);
insert into customers values('C010','varshini','23 Tsawassen Blvd','www.amazon.com',4500);

delete orders where order_id='OR010';
insert into orders values('OR001','C001','delivered','E009','19-10-2021');
insert into orders values('OR002','C004','pending','E009','12-10-2018');
insert into orders values('OR003','C002','delivered','E004','20-10-2021');
insert into orders values('OR004','C004','cancelled','E009','03-11-2018');
insert into orders values('OR005','C009','delivered','E001','09-11-2021');
insert into orders values('OR006','C005','pending','E009','24-02-2017');
insert into orders values('OR007','C008','delivered','E001','01-12-2021');
insert into orders values('OR008','C004','delivered','E004','02-11-2021');
insert into orders values('OR009','C003','cancelled','E009','23-10-2020');
insert into orders values('OR010','C002','delivered','E001','28-12-2021');
select * from orders;
select * from products order by product_id;
SELECT * FROM employees order by employee_id;
select * from customers;
select * from order_items;
delete order_items where order_id='OR001';
insert into order_items values('OR001','ITM01','P001',3,9000);
insert into order_items values('OR002','ITM02','P002',2,5500);
insert into order_items values('OR003','ITM03','P003',2,3500);
insert into order_items values('OR004','ITM04','P004',3,6000);
insert into order_items values('OR005','ITM05','P005',1,6000);
insert into order_items values('OR006','ITM06','P009',2,1000);
insert into order_items values('OR007','ITM07','P003',2,3500);
insert into order_items values('OR008','ITM08','P011',2,450);
insert into order_items values('OR009','ITM09','P009',3,1000);
insert into order_items values('OR010','ITM10','P011',2,450);
select * from order_items;
commit;

select customers.name,(select max(count(customer_id))from orders GROUP by orders.customer_id) frequent_user from orders inner join customers on orders.customer_id=customers.customer_id 
group by customers.name;

select customers.name,customers.customer_id,customers.address,count(orders.customer_id)orders_count from orders inner join customers on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address;


select customers.name,customers.customer_id,customers.address,count(orders.customer_id)ordercount 
from orders inner join customers
on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address
order by ordercount DESC 
fetch first 1 row only;

select customers.name,customers.customer_id,customers.address,orders.status,count(orders.customer_id)ordercount 
from orders inner join customers
on orders.customer_id=customers.customer_id 
where orders.status='cancelled'
group by customers.name,customers.customer_id,customers.address,orders.status 
order by ordercount DESC 
fetch first 1 row only;


select * from orders;
select * from products order by product_id;
SELECT * FROM employees order by employee_id;
select * from customers;
select * from order_items;

select customers.name,customers.customer_id,customers.address,count(orders.customer_id)ordercount 
from orders inner join customers
on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address order by ordercount fetch first 1 row only;

select customers.name,customers.customer_id,customers.address from customers where customer_id in(select customer_id from orders 
group by orders.customer_id having count(customer_id)>2);

select  max(mycount)from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id);




select customers.name as frequent_customer,customers.customer_id,customers.address,count(orders.customer_id)as order_count
from orders inner join customers
on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address 
having count(orders.customer_id)
in(SELECT max(mycount) from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id));






select customers.name,customers.customer_id,customers.address,count(orders.customer_id)as order_count
from orders inner join customers
on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address 
having count(orders.customer_id)in(SELECT min(mycount) from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id));


SELECT count(orders.customer_id)ordercount FROM ORDERS;

create view fequent_customer as select customers.name as frequent_customer,customers.customer_id,customers.address,count(orders.customer_id)as order_count
from orders inner join customers
on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address 
having count(orders.customer_id)in(SELECT max(mycount) from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id));

select * from fequent_customer;


select customers.name as frequent_customer,customers.customer_id,customers.address,
count(orders.customer_id)as order_count,customers.credit_limit as old_credit_limit,
  case when count(orders.customer_id)=(SELECT max(mycount) 
                       from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id))
     then
           customers.credit_limit+1000 
     else
           customers.credit_limit
  end  as new_credit_limit from orders
  inner join customers on orders.customer_id=customers.customer_id 
group by customers.name,customers.customer_id,customers.address,customers.credit_limit
   having count(orders.customer_id) in (SELECT max(mycount) from (select customer_id,count(customer_id) mycount from orders 
               GROUP by customer_id));
               
               
               
select customers.name as frequent_customer,customers.customer_id,order_items.order_id,
count(orders.customer_id)as order_count,customers.credit_limit as old_credit_limit,
  case when count(orders.customer_id)=(SELECT max(mycount) 
                       from (select customer_id,count(customer_id) mycount from orders GROUP by customer_id))
     then
           customers.credit_limit+1000 
     else
           customers.credit_limit
  end  as new_credit_limit from orders
  inner join customers on orders.customer_id=customers.customer_id 
  inner join order_items on orders.order_id=order_items.order_id
group by customers.name,customers.customer_id,customers.credit_limit,order_items.order_id
   having count(orders.customer_id) in (SELECT max(mycount) from (select customer_id,count(customer_id) mycount from orders 
               GROUP by customer_id));              
--Max Purchase



SELECT customers.name,orders.customer_id,customers.credit_limit,SUM(quantity*unit_price) AS total_amount,
     CASE WHEN SUM(quantity*unit_price)=(SELECT MAX(total)FROM(select orders.customer_id,SUM(quantity*unit_price) total FROM order_items
                               INNER JOIN  orders ON order_items.order_id=orders.order_id  GROUP BY orders.customer_id)) 
      THEN
           customers.credit_limit+1000 
      ELSE
           customers.credit_limit
     END  AS new_credit_limit  FROM order_items
INNER JOIN orders  ON order_items.order_id=orders.order_id
INNER JOIN customers ON orders.customer_id=customers.customer_id
     GROUP BY orders.customer_id,customers.name,customers.credit_limit
HAVING SUM(quantity*unit_price) IN (SELECT MAX(total)FROM(SELECT orders.customer_id,SUM(quantity*unit_price) total FROM order_items
             INNER JOIN orders  ON order_items.order_id=orders.order_id
                     GROUP BY orders.customer_id));
                     
--  using where clause above 20000                 
 SELECT customers.name,orders.customer_id,customers.credit_limit,SUM(quantity*unit_price) AS total_amount,
     CASE WHEN SUM(quantity*unit_price)>=20000
      THEN
           customers.credit_limit+1000 
      ELSE
           customers.credit_limit
     END  AS new_credit_limit  FROM order_items
INNER JOIN orders  ON order_items.order_id=orders.order_id
INNER JOIN customers ON orders.customer_id=customers.customer_id
     GROUP BY orders.customer_id,customers.name,customers.credit_limit
     order by  total_amount desc;                   
  
  

select orders.customer_id,SUM(quantity*unit_price) total FROM order_items
                               INNER JOIN  orders ON order_items.order_id=orders.order_id  GROUP BY orders.customer_id;
                               
commit;                               
