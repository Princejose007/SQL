show databases;
create database basic;
use basic;

create table person(
personid int,
lastname varchar(235),firstname varchar(235),
Address varchar(235),city varchar(235)
);


insert into person(personid,lastname,firstname,Address,city)
values('1','Jose','prince','pallikunnu','Thrissur');

select * from person;


