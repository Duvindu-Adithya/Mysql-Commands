show databases;

create database apwd_3;

drop database apwd_3;

use apwd_3;

show tables;

drop table student;

create table student(
    sid int,
    student_name varchar(200),
    address varchar(300),
    mark decimal(10,2),
    cid int,
    primary key(sid),
    foreign key(cid) references class(cid)
);

desc student;

-- get all data of a table
select * from student;

-- insert data to table
insert into student values(1,"Yasindu","Panadura",45,1);
insert into student values(2,"Yasindu","Panadura",45,1);
insert into student values(3,"Pasindu","Galle",45,2);

select student_name from student;

select * from student where sid = 2;

delete from student where sid=3;

update student set address="Colombo", mark=87 where sid = 2;

create table class(
    cid int,
    grade varchar(200),
    name varchar(300),
    primary key(cid)
);

insert into class values(1,"grade 5","A");
insert into class values(2,"grade 5","B");
insert into class values(3,"grade 5","c");

-- and, or

select * from student where student_name="Yasindu" and address="Panadura";

-- like

-- order by

--join quaries

select * from student inner join class on student.cid = class.cid;

select * from student left join class on student.cid = class.cid;

select * from student right join class on student.cid = class.cid;





