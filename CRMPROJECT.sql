create table client_t(
    client_id varchar(9),
    name varchar(15) NOT NULL,
    phoneno int NOT NULL,
    address varchar(225),
    primary key(client_id));
    
insert into client_t values('1','Dabur',9988776655,'Versova');
insert into client_t values('2','Yamaha',9898987777,'Dadar');
select*from client_t;

create table warehouse(
w_id varchar(3) primary key,
city varchar(15)NOT NULL,
w_name varchar(20)NOT NULL,
client_id varchar(9),
carpet_area int NOT NULL,
foreign key (client_id) references client_t(client_id));

insert into warehouse values('101','Raipur','Jainam','1',1690);
insert into warehouse values('102','Mumbai','Gwariam','1',7120);
insert into warehouse values('103','Delhi','Bharattam','1',10230);
insert into warehouse values('201','Bangalore','Harshratnam','2',5270);
insert into warehouse values('202','Delhi','Attishalay','2',4980);
insert into warehouse values('203','Mumbai','Omium','2',8650);
select * from warehouse;


create table customer(
customer_name varchar(100)NOT NULL,
cust_id varchar(9),
email varchar(40) NOT NULL,
phone_no int NOT NULL,
client_id varchar(9),
address varchar(225),
primary key(cust_id),
foreign key (client_id) references client_t(client_id));

insert into customer values('Sanjana Sanghi','C001','sanjanasanghi@gmail.com',9752266667,'1','B-32, Wallfort City, Raipur');
insert into customer values('Archit Jha','C002','architjha@gmail.com',9752296666,'2','204, Wing 3, VIT Vellore');
insert into customer values('Anusha Bhagat','C003','anushabhagat@gmail.com',9109906969,'1','408, Unity Complex, Rajim');
insert into customer values('Avni Sharma','C004','avnisharma@gmail.com',9200036969,'1','B-35, South City Towers, Kolkata');
insert into customer values('Aarvi Talwar','C005','aarvitalwar@gmail.com',9229363020,'2','909, Hudco Place, New Delhi');
insert into customer values('Samiksha Naik','C006','samikshanaik@gmail.com',7882348822,'2','House 211, RL Road, Bangalore');
insert into customer values('Aditya Mukherjee Sanghi','C007','adityamukherjee@gmail.com',9879876222,'2','301 Wing 1, DLF Cybercity, Gurgaon');
insert into customer values('Sarvagya Singh','C008','sarvagyasingh@gmail.com',8796087800,'2','56, Civic Center, Hyderabad');
insert into customer values('Aditi Srivastava','C009','aditisrivastava@gmail.com',9882055522,'1','35, Lokhandwala, Mumbai');

select*from customer;

create table department(
name varchar(30),
d_id varchar(9) primary key,
client_id varchar(9),
foreign key (client_id) references client_t(client_id)
);

insert into department values('Sales','H1','1');
insert into department values('HR','H2','1');
insert into department values('Marketing','H3','1');
insert into department values('Management','H4','1');
insert into department values('Finance','H5','1');
insert into department values('Customer Service','H6','1');
insert into department values('Sales','L1','2');
insert into department values('HR','L2','2');
insert into department values('Marketing','L3','2');                                                  
insert into department values('Management','L4','2');
insert into department values('Finance','L5','2');
insert into department values('Customer Service','L6','2');
select*from department;

create table employee(
e_id varchar(9),
e_name varchar(50)not null,
city varchar(20),
dob varchar(17) not null,
client_id varchar(9),
d_id varchar(9),
phone_no int not null,
email varchar(100),
primary key(e_id),
foreign key (client_id) references client_t(client_id));

insert into employee values('J002','Anisha Singh','Mumbai','03-03-1980','1','H3',7876564834,'anishas@nmims.edu.in');
insert into employee values('J003','Ananya Giliyal','Jaipur','07-03-1983','1','H4',9980067673,'ananyag@nmims.edu');
insert into employee values('J004','Siddhant Sindhkar','Bangalore','13-02-1999','1','H3',7865456564,'siddhants@nmims.edu');
insert into employee values('J005','Abhimanyu Gupta','Kolkata','05-07-1996','1','H5',9879876783,'abhimanyug@nmims.edu');
insert into employee values('J006','Sourabh Ahuja','Lucknow','15-07-1987','1','H5',9990765654,'sourabha@nmims.edu');
insert into employee values('J007','Neelabjo Roy','Indore','18-01-1979','1','H1',9897765001,'neelabjor@nmims.edu');
insert into employee values('J008','Smit Mange','Nagpur','12-04-1986','1','H1',8768757598,'smitm@nmims.edu');
insert into employee values('J009','Anidya Bhandari','Delhi','03-03-1996','1','H2',8768757575,'anidyab@nmims.edu');
insert into employee values('K001','Dharm Sagparia','Mumbai','03-03-1980','2','L1',9997655553,'dharms@nmims.edu');
insert into employee values('K002','Harsh Raj','Jaipur','07-03-1983','2','L5',7024406333,'harshr@nmims.edu');
insert into employee values('K003','Pranav Manoj','Mumbai','13-02-1999','2','L4',7049944669,'pranavm@nmims.edu');
insert into employee values('K004','Vansh Gandhi','Kolkata','05-07-1996','2','L6',8822900021,'vanshg@nmims.edu');
insert into employee values('K005','Aarohi Mhaske','Bangalore','15-07-1987','2','L2',9752266669,'aarohim@nmims.edu');
insert into employee values('K006','Keshav Laddha','Kolkata','18-01-1979','2','L3',9200040402,'keshavl@nmims.edu');
select * from employee;


create table payroll(
e_id varchar(9) primary key,
salary int,
allowance int,
d_id varchar(9),
foreign key (e_id) references employee(e_id),
foreign key(d_id) references department(d_id));

insert into payroll values('J002',20000,2000,'H3');
insert into payroll values('J003',9000,900,'H4');
insert into payroll values('J004',14000,1400,'H3');
insert into payroll values('J005',20000,2000,'H5');
insert into payroll values('J006',25000,2500,'H5');
insert into payroll values('J007',12000,1200,'H1');
insert into payroll values('J008',12400,1240,'H1');
insert into payroll values('J009',13800,1380,'H2');
insert into payroll values('K001',5000,500,'L1');
insert into payroll values('K002',7000,700,'L5');
insert into payroll values('K003',5500,550,'L4');
insert into payroll values('K004',7000,700,'L6');
insert into payroll values('K005',21000,2100,'L2');
insert into payroll values('K006',1000,500,'L3');

select * from payroll;


create table order_det(
o_id varchar(9) primary key,
cust_id varchar(9),
o_date varchar(17),
total_amount int,
foreign key(cust_id ) references customer(cust_id)
);

insert into order_det values('1001','C004','07-03-2022',420);
insert into order_det values('1002','C004','08-03-2022',100);
insert into order_det values('2003','C007','01-03-2022',125);
insert into order_det values('2001','C006','17-03-2022',10000);
insert into order_det values('2002','C005','12-02-2022',20000);
insert into order_det values('1003','C003','09-01-2022',15000);
insert into order_det values('1004','C001','21-03-2022',14000);
insert into order_det values('2004','C008','06-02-2022',250);

select*from order_det;

create table distributor(
w_id varchar(3),
d_name varchar(25),
d_id varchar(9),
phone_no varchar(15),
email varchar(100),
--client_id varchar(9),
--foreign key (client_id) references client_t(client_id),
foreign key (w_id) references warehouse(w_id),
primary key (w_id,d_id));

insert into distributor values('101','Cradle','1','0771-203454','distributions@cradle.com');
insert into distributor values('102','BayArea','2','0772-787872','distributions@bayarea.com');
insert into distributor values('201','Carboline','3','0773-989651','distributions@carboline.com');
insert into distributor values('202','Perkinas','4','0774-980023','distributions@perkinas.com');
insert into distributor values('203','BayArea','2','0772-787872','distributions@bayarea.com');
insert into distributor values('103','Carboline','3','0773-989651','distributions@carboline.com');
select * from distributor;


create table billing(
o_id varchar(9) not null,
bill_id varchar(9) primary key,
bill_qty int not null,
p_name varchar(40)not null,
p_cost int ,
foreign key (o_id) references order_det(o_id)
);

insert into billing values('1001','C14B6A',2,'Chyawanprash (100g)',210);
insert into billing values('1002','C14B6B',1,'Honey (100ml)',100);
insert into billing values('1003','C14B6C',5,'Dabur Red',25);
insert into billing values('2001','A14Z7A',2,'Guitar F310',5000);
insert into billing values('2002','A14Z7B',1,'Piano P66',20000);
insert into billing values('2003','A14Z7C',3,'Guitar F310',5000);
insert into billing values('2004','A14Z7D',2,'Pacifica Guitar',7000);
insert into billing values('1004','C14B6D',1,'Facewash',250);
select * from billing;


create table inventory(
w_id varchar(3),
p_qty int,
p_name varchar(30),
--client_id varchar(9),
foreign key (w_id) references warehouse(w_id),
--foreign key (client_id) references client_t(client_id),
primary key (w_id,p_name));

insert into inventory values('102',500,'Honey (100ml)');
insert into inventory values('101',1000,'Chyawanprash (100g)');
insert into inventory values('102',100,'Hairoil (100ml)');
insert into inventory values('103',200,'Dabur Red');
insert into inventory values('103',100,'Facewash');
insert into inventory values('201',5,'Piano P66');
insert into inventory values('202',10,'Pacifica Guitar');
insert into inventory values('203',12,'Honey (100ml)');
insert into inventory values('102',100,'Chyawanprash (100g)');
insert into inventory values('202',7,'Piano P66');
insert into inventory values('101',200,'Honey (100ml)');
select * from inventory;




--list the name of customer whose total amount is greater than 10,000 for customer 1
select customer.customer_name,total_amount from order_det natural join customer 
where customer.client_id='1' and order_det.total_amount>=10000;

--list the warehouse with largest area or storage for client 1
select w_name,city,carpet_area from warehouse where client_id='1' and carpet_area = (select max(carpet_area) from warehouse);

--List the name of  customer of the client 1 who live in Raipur
select count(cust_id) from customer where address like '%, Raipur' and client_id='1';

--list the distributor who provides in Delhi 
select distributor.d_name from distributor,warehouse where distributor.w_id=warehouse.w_id and warehouse.city='Delhi';

--Carboline distributes where and for which client 
select warehouse.client_id,warehouse.city from distributor,warehouse
where distributor.w_id=warehouse.w_id and distributor.d_name='Carboline' ;

--list the average salary of the employee of company dabur in finance department
select avg(salary) from payroll where d_id='H5';

--show the bill with the id A14Z7B
select * from billing where bill_id='A14Z7B';


--what products are stored in warehouse id 102 
select p_name,p_qty from inventory where w_id='102';


--find when 2 chavanprash where ordered
select order_det.o_date from order_det,billing 
where
order_det.o_id=billing.o_id and billing.p_name='Chyawanprash (100g)'and billing.bill_qty=2;

--increase the salary of employee(c.id=2) working in marketing department by 20%

select  employee.e_name,payroll.salary,1.20*(payroll.salary) as revised_salary from employee,payroll where employee.e_id=payroll.e_id  and employee.d_id='L3';


