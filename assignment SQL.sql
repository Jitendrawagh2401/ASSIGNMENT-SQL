create database task1;
use task1;
create table student(
	ROLLNO int  auto_increment  NULL,
    name varchar(50),
    branch varchar(50),
    primary key(ROLLNO)
);
insert into student(ROLLNO,name,branch) values (1,'Jay','Computer Science');
insert into student(ROLLNO,name,branch) values (2,'Suhani','Electronic and Com.');
insert into student(ROLLNO,name,branch) values (3,'Kriti','Electronic and Com.');
create table Exam(
	ROLLNO int auto_increment ,
    S_code varchar(50),
    Marks int,
    P_code varchar(50),
    foreign key (ROLLNO) references student(ROLLNO)
);

insert into Exam(ROLLNO,S_code,marks,P_code) values (1,'CS11','50','CS');
insert into Exam(ROLLNO,S_code,marks,P_code) values (1,'CS12','60','CS');
insert into Exam(ROLLNO,S_code,marks,P_code) values (2,'EC101','66','EC');
insert into Exam(ROLLNO,S_code,marks,P_code) values (2,'EC102','70','EC');
insert into Exam(ROLLNO,S_code,marks,P_code) values (3,'EC101','45','EC');
insert into Exam(ROLLNO,S_code,marks,P_code) values (3,'EC102','50','EC');

create database task2;
use task2;
create table studentdata(
	FirstName varchar(50),
    LastName varchar(50),
    Address varchar(50),
    City varchar(10),
    Age int
    );
    insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Mickey','Mouse','123 fantasy way','Anaheim','73');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Bat','Man','321 cavern Ave','Gotham','54');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Wonder','Women','987 Truth Way','Paradise','39');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Donaki','Duck','555 Quack Street','Mallard','65');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Bugs','Bunny','567 Carrot Street','Rascal','58');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Wiley','Coyote','999 Acme Way','Canyon','61');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Cat','women','234 Purrfect Street','Hairball','32');
	insert into studentdata(Firstname,Lastname,Address,City,Age) values ('Tweety','Bird','543','Itotitaw','28');
    
    create database task3;
    use task3;
    create table Employee (
    Employeeid int auto_increment not null,
    first_name varchar(50),
    last_name varchar(50),
    salary int,
    joining_date timestamp,
    department varchar(50),
    primary key(employeeid)
    );
      create table Employee (
    Employeeid int auto_increment not null,
    first_name varchar(50),
    last_name varchar(50),
    salary int,
    joining_date timestamp,
    department varchar(50),
    primary key(employeeid)
    );
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (2,'Michael','Clarke','800000','2013-01-01 12:00:00 AM','Insurance');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (3,'Roy','Thomas','700000','2013-02-01 12:00:00 AM','Banking');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (4,'Tom','Jose','600000','2013-02-01 12:00:00 AM','Insurance');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (5,'Jerry','Pinto','650000','2013-02-01 12:00:00 AM','Insurance');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (6,'Philip','Mathew','750000','2013-01-01 12:00:00 AM','Service');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (7,'Testname1','123','650000','2013-01-01 12:00:00 AM','Service');
	insert into employee( Employeeid, first_name, last_name,salary,joining_date,department) value (8,'Testname2','Lname%','600000','2013-02-01 12:00:00 AM','Insurance');
    
      create table Incentive (
    employee_ref_id int ,
    Incentive_date date,
    Incentive_amount int(50)
    );
	insert into Incentive(employee_ref_id,Incentive_date,Incentive_amount) VALUE (1,'13-02-01','5000');
	insert into Incentive(employee_ref_id,Incentive_date,Incentive_amount) VALUE (2,'13-02-01','3000');
	insert into Incentive(employee_ref_id,Incentive_date,Incentive_amount) VALUE (3,'13-02-01','4000');
	insert into Incentive(employee_ref_id,Incentive_date,Incentive_amount) VALUE (1,'13-01-01','4500');
	insert into Incentive(employee_ref_id,Incentive_date,Incentive_amount) VALUE (2,'13-01-01','3500');
     
     ## Que.1
     Select first_name TOM from employee;
     
     ## Que. 2
     select first_name ,last_name,salary from employee; 
     
     ## Que.3 
     select * from employee order by first_name asc,salary desc;
     
     ## Que. 4 
     select* from employee where first_name like 'J%';
     
     ## Que. 5
     SELECT DEPARTMENT,MAX(SALARY) MAXSALARY FROM EMPLOYEE GROUP BY DEPARTMENT ORDER BY MAXSALARY ASC;
     
     ## Que. 6 
     SELECT FIRST_NAME,INCENTIVE_AMOUNT FROM EMPLOYEE A INNER JOIN INCENTIVES B ON A.EMPLOYEE_ID=B.EMPLOYEE_REF_ID AND INCENTIVE_AMOUNT >3000;
     
     ## Que. 7
	create trigger employee
     after insert on employee
     for each row
     begin
     
     end;
     
     create database task4;
     use task4
	Create table salesperson (
    pk_no int,
    s_name varchar(20),
    city varchar(20),
    comm decimal(4,2)
    );
     
	
    insert into salesperson(PK_NO,S_NAME,city,comm) VALUE (1001,'peel','london','0.12'); 
	insert into salesperson(PK_NO,S_NAME,city,comm) VALUE (1002,'Serres','San Jose','0.13'); 
	insert into salesperson(PK_NO,S_NAME,city,comm) VALUE (1004,'Motika','London','0.11');
	insert into salesperson(PK_NO,S_NAME,city,comm) VALUE (1007,'Rafkin','Barcelona','0.15'); 
	insert into salesperson(PK_NO,S_NAME,city,comm) VALUE (1003,'Axelrod','New York','0.1'); 
      
      
      Create table Customer (
    pk_CNM int,
    C_name varchar(20),
    city varchar(20),
    RATING int,
    FK_sno int
    );
    
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) VALUE (2001,'hoffman','london','100','1001'); 
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) VALUE (2002,'giovanne','roe','200','1003'); 
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) VALUE (3003,'liu','san jose','300','1002'); 
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) VALUE (2004,'grass','barcelona','100','1002');
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) VALUE (2006,'clemens','london','300','1007'); 
	insert into Customer(PK_CNM,C_NAME,city,Rating,FK_sno) value (2007,'pereira','roe','100','1004'); 
    
  ---  Que.1
  
  Select * from salesperson where comm < 0.12 and city = 'london’;
  
-----Que .2
Select s_name, comm from salesperson where comm > 0.10' and comm < 0.12; 


Select c_name from customer where rating <= 100 or city = ‘roe’; 