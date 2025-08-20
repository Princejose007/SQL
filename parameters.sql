use basic;


CREATE TABLE student (
    id INT NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    age INT,
    unique (id)
);


select* from student;

CREATE TABLE orderst (
    orderid INT NOT NULL,
    order_number INT NOT NULL,
    id INT,
    PRIMARY KEY (orderid),
    FOREIGN KEY (id) REFERENCES student(id)
);

select * from student;

#Autoincrement 

create table parsel(
       parcelid int not null auto_increment,
       last_name varchar(255) not null,
       first_name varchar(255) not null,
       primary key(parcelid)
);

insert into parsel(parcelid,last_name,first_name)
values(29,'jose','price'),
(44,'nl','austin');
select * from parsel;