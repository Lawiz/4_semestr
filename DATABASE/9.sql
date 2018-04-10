use S_univer;
go
--task 1
create view [Teachers]
as select TEACHER[id],TEACHER_NAME[name],GENDER[sex],pulpit[pulpit]
from teacher
go 
select * from Teachers
go
--task 2
create view [count of pulpits]
as select FACULTY.FACULTY_NAME, (select COUNT(*) from PULPIT)[count]
from FACULTY
go
select * from [count of pulpits]
go

--task 3
create view [auditoriums]
as select AUDITORIUM, AUDITORIUM_NAME
from AUDITORIUM
where AUDITORIUM.AUDITORIUM_TYPE like '%ЛК%'
go
insert auditoriums values('test','test');
select *from [auditoriums]
go
--task 4
use S_univer;
go
create view[audi]
as select AUDITORIUM,AUDITORIUM_NAME 
FROM AUDITORIUM join AUDITORIUM_TYPE
on AUDITORIUM.AUDITORIUM_TYPE=AUDITORIUM_TYPE.AUDITORIUM_TYPE
where AUDITORIUM_TYPE.AUDITORIUM_TYPE like'%ЛК%' WITH CHECK OPTION
go
select * from audi
go
--task 5
create view [Дисциплины]
as select top(10) *
from SUBJECT
order by SUBJECT.SUBJECT_NAME 
go
select * from [Дисциплины]
--task 6
go
create view [count of pulpits2] with SCHEMABINDING
as select FACULTY.FACULTY_NAME, (select COUNT(*) from PULPIT)[count]
from FACULTY
go
select * from [count of pulpits2]




