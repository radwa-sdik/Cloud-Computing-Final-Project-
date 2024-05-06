create database IF not exists student_data;

use student_data;

drop table IF exists student;

create table student (
    stu_id int primary key,
    FirstName varchar(30) not null,
    LastName varchar(30) not null,
    age int,
    CGPA double
    );


insert into student(stu_id,FirstName,LastName,age,CGPA)
values(22010401,"mai","mahmoud donia",20,3.6);
insert into student(stu_id,FirstName,LastName,age,CGPA)
values(22010350,"shorouq","tareq ahmed",19,3.5);
insert into student(stu_id,FirstName,LastName,age,CGPA)
values(22010188,"fatma","mohamed ahmed zaki",20,3.6);
insert into student(stu_id,FirstName,LastName,age,CGPA)
values(22010064,"aya","ahmed kamal",20,3.5);
insert into student(stu_id,FirstName,LastName,age,CGPA)
values(22010089,"radwa","mohamed ahmed",19,3.7);

drop table IF exists courses;

create table courses (
    Course_id int primary key,
    CourseName varchar(30) not null,
    For_level varchar(20) not null
    );

insert into courses(Course_id,CourseName,For_level)
 values(11, "data science","first");
insert into courses(Course_id,CourseName,For_level)
values(13, "probability2","second");
insert into courses(Course_id,CourseName,For_level)
values(15, "data analitics ","third");
insert into courses(Course_id,CourseName,For_level)
values(12, "Regression","second");
insert into courses(Course_id,CourseName,For_level)
values(10, "cloud","fourth");