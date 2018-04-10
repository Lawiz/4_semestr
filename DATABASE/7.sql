use S_univer;

--1 task

SELECT PULPIT_NAME FROM PULPIT,FACULTY
WHERE FACULTY.FACULTY IN (SELECT FACULTY FROM PROFESSION WHERE PROFESSION_NAME like '%технологии%'or PROFESSION_NAME like 'технология%');

--TASK 2
select PULPIT_NAME FROM PULPIT JOIN FACULTY
	ON FACULTY.FACULTY IN (SELECT FACULTY FROM PROFESSION
	 WHERE PROFESSION_NAME like '%технологии%'or PROFESSION_NAME like 'технология%');



--TASK 3

SELECT PULPIT_NAME
FROM PULPIT JOIN FACULTY
	ON PULPIT.FACULTY=FACULTY.FACULTY
	JOIN PROFESSION
		ON PROFESSION.PROFESSION_NAME LIKE '%технологии%'or PROFESSION_NAME like 'технология%'
--WHERE PROFESSION_NAME	

--task 4 

select AUDITORIUM, AUDITORIUM_TYPE  from AUDITORIUM as A
where A.AUDITORIUM_CAPACITY=(select top(1) AUDITORIUM_CAPACITY from AUDITORIUM as AA
where AA.AUDITORIUM=A.AUDITORIUM
order by AUDITORIUM desc)


--task 5

select FACULTY from FACULTY
where not exists(select * from PULPIT
where PULPIT.FACULTY=FACULTY.FACULTY)


--tsak 6 ОАиП, БД и СУБД
select top(1) 
(select avg(NOTE) FROM PROGRESS WHERE SUBJECT LIKE '%ОАиП%')[ОАИП],
(SELECT AVG(NOTE) FROM PROGRESS WHERE SUBJECT LIKE  '%БД%')[БД],
(SELECT AVG(NOTE) FROM PROGRESS WHERE SUBJECT LIKE '%СУБД%')[СУБД]


--task 7
select note from PROGRESS
where note >=all(select note from PROGRESS
where note<4)
order by note
--task 8
select note from PROGRESS
where note >=any(select note from PROGRESS
where note>0)
order by note


