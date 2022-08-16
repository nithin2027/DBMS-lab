create database stud_accomod;
use stud_accomod;
drop table lux_room;
create table stud(bid int primary key,fname varchar(20),lname varchar(20),street varchar(30),city varchar(30),postcode int,nation varchar(10),dob date,age int, email varchar(20), mbno varchar(11),gender varchar(5),slevel varchar(3),needs varchar(20),comments varchar(30),stat varchar(10),sit varchar(10));
create table victoria_hall(hid int primary key,hname varchar(20),address varchar(30),phno varchar(11),manager varchar(20));
create table lux_room(placeid int primary key,rno int,hid int references victoria_hall(hid),rent int);
create table apartment(fid int primary key, address varchar(20),avail int);
create table dormitory(placeid int primary key,fid int references apartment(fid),rid int,bed_id int,rent int);
create table resident_office(bid int primary key,choice int,placeidH int references lux_room(placeid), placeidD int references dormitory(placeid), foreign key (bid) references stud(bid));
create table invoice(iid int primary key, bid int references stud(bid),fname varchar(20) references stud(fname),lname varchar(20) references stud(lname),method varchar(20),date_of_pay date,term int,placeid int,address varchar(30));
create table inspection(slno int,staff_name varchar(20),inspection_date date,choice int,hid int references victoria_hall(hid),fid int references apartment(fid),comments varchar(10),satisfaction varchar(5));

insert into stud values(10,'r','rahul','s1','c1',60,'ind','2022-09-22',20,'xyz@mail',9090,'m','ug','none','none','placed','nit');
insert into stud values(11,'mk','nv','s1','c1',60,'ind','2022-09-22',20,'xyz@mail',9090,'m','ug','none','none','placed','nit');
insert into stud values(12,'nithin','bs','s2','c1',60,'ind','2022-09-22',20,'xyz@mail',9090,'m','ug','none','none','placed','nit');
insert into stud values(13,'nag','sunagar','s3','c1',60,'ind','2022-09-22',20,'xyz@mail',9090,'m','ug','none','none','placed','nit');
insert into stud values(14,'nag','halatti','s4','c2',60,'ind','2022-09-22',20,'xyz@mail',9090,'m','ug','none','none','placed','nit');

insert into victoria_hall values(1,'h1','a1','1212','m1');
insert into victoria_hall values(2,'h2','a2','1213','jakz');
insert into victoria_hall values(3,'h3','a1','1214','m3');
insert into victoria_hall values(4,'h4','a3','1215','m4');
insert into victoria_hall values(5,'h5','a4','1216','m5');

insert into lux_room values(100,90,1,2000);
insert into lux_room values(101,91,2,2000);
insert into lux_room values(102,92,3,2000);
insert into lux_room values(103,93,4,2000);
insert into lux_room values(104,94,5,2000);

insert into apartment values(300,'fa1','20');
insert into apartment values(301,'fa2','10');
insert into apartment values(302,'fa3','5');
insert into apartment values(303,'fa4','15');
insert into apartment values(304,'fa5','20');

insert into dormitory values(200,300,11,1,10000);
insert into dormitory values(201,301,12,2,10000);
insert into dormitory values(202,302,13,3,10000);
insert into dormitory values(203,303,14,1,10000);
insert into dormitory values(204,304,15,2,10000);
insert into dormitory values(205,300,16,3,10000);

insert into resident_office(bid,choice,placeidH) values(10,1,2);
insert into resident_office(bid,choice,placeidD) values(11,2,200);
insert into resident_office(bid,choice,placeidH) values(12,1,1);
insert into resident_office(bid,choice,placeidD) values(13,2,201);
insert into resident_office(bid,choice,placeidH) values(14,1,4);

insert into invoice values(11,10,'r','rahul','visa','2022-01-19',1,2,'a1');
insert into invoice values(12,11,'mk','nv','visa','2022-01-19',2,200,'a1');
insert into invoice values(13,12,'nithin','bs','visa','2022-01-19',3,1,'a1');
insert into invoice values(14,13,'nag','sunagar','visa','2022-01-19',1,201,'a1');
insert into invoice values(15,14,'nag','halatti','visa','2022-01-19',1,4,'a1');

insert into inspection(slno,staff_name,inspection_data,choice,hid,comments,satisfaction) values(1,'manja','2021-11-12',1,1,'clean','yes');
insert into inspection(slno,staff_name,inspection_data,choice,fid,comments,satisfaction) values(2,'manja1','2021-11-12',2,301,'clean','yes');
insert into inspection(slno,staff_name,inspection_data,choice,hid,comments,satisfaction) values(3,'manja2','2021-11-12',1,2,'clean','yes');
insert into inspection(slno,staff_name,inspection_data,choice,fid,comments,satisfaction) values(4,'manja3','2021-11-12',2,302,'clean','yes');
insert into inspection(slno,staff_name,inspection_data,choice,hid,comments,satisfaction) values(5,'jakz','2021-11-12',1,3,'notclean','no');



