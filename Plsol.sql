SET SERVEROUTPUT ON
BEGIN
DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/
SET SERVEROUTPUT ON
DECLARE
    NAME VARCHAR2(10):='PRIYA';
BEGIN
   DBMS_OUTPUT.PUT_LINE(NAME); 
END;
/

SET SERVEROUTPUT ON
DECLARE
   Emp_number INTEGER := 20;
   Name VARCHAR2(50);
BEGIN
   SELECT first_name INTO Name FROM Employee
   WHERE id = Emp_number;
   DBMS_OUTPUT.PUT_LINE('Employee name is ' || Name);
EXCEPTION WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No such employee: ' ||
   Emp_number);
END;
/
--CASE WHEN ELSE
SET SERVEROUTPUT ON
DECLARE
   V_grade CHAR(1):=UPPER('&Enter_grade');
   V_appraisal VARCHAR2(20);
BEGIN
V_appraisal	:=
   CASE 	    V_grade
	WHEN  'A' THEN	'Excellent'
	WHEN  'B' THEN	'Very Good'
	WHEN  'C' THEN	'Good'
	ELSE   'No such Grade'
END;
DBMS_OUTPUT.PUT_LINE (' Grade : ' || V_grade || ' Appraisal ' || V_appraisal);
END;
/
--% Type
SET SERVEROUTPUT ON
DECLARE
   Emp_number INTEGER := 20;
   Name Employee.first_name%TYPE;
BEGIN
   SELECT first_name INTO Name FROM Employee
   WHERE id = Emp_number;
   DBMS_OUTPUT.PUT_LINE('Employee name is ' || Name);
EXCEPTION WHEN NO_DATA_FOUND THEN
   DBMS_OUTPUT.PUT_LINE('No such employee: ' ||
   Emp_number);
END;
/

--Bind variable
set SERVEROUTPUT on
variable Name varchar2(30);
BEGIN
   SELECT first_name INTO :Name FROM Employee
   WHERE id = 20;
END;
/
PRINT Name

--% ROWTYPE
SET SERVEROUTPUT ON
DECLARE
 emp_rec Employee%ROWTYPE;
BEGIN
  SELECT * into emp_rec FROM  Employee
  where ROWNUM<2;
  if emp_rec.id=1 and emp_rec.first_name='anu' then
  emp_rec.salary:=emp_rec.salary*2;
  END IF;
  DBMS_OUTPUT.PUT_LINE('Employee id is ' || emp_rec.id);
  DBMS_OUTPUT.PUT_LINE('Employee name is ' || emp_rec.first_name);
  DBMS_OUTPUT.PUT_LINE('Employee Salary'||emp_rec.salary);
End;
/
--IF ELSE
SET SERVEROUTPUT ON
DECLARE
Emp_number Employee.id%TYPE;
Salary Employee.salary%TYPE;
BEGIN
   SELECT id,salary INTO Emp_number,Salary FROM Employee
   where id=20;
   IF(Salary>20000)THEN
   DBMS_OUTPUT.PUT_LINE('salary is greater than 20000');
  ELSE
   DBMS_OUTPUT.PUT_LINE('salary is less than 20000');
   END IF;
   END;
   /
--CASE STATEMENT
SET SERVEROUTPUT ON
DECLARE
 NUM NUMBER:=1;
 STR VARCHAR2(20):='Priya';
BEGIN
  CASE WHEN NUM=2 THEN
   DBMS_OUTPUT.PUT_LINE('value of NUM is'||to_char(NUM));
  WHEN STR='Priy' THEN
   DBMS_OUTPUT.PUT_LINE('value of STR is'||STR);
   ELSE
   null;
 END CASE;
 END;
   /
  
  
  


 






