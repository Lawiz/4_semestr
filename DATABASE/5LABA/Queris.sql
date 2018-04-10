use S_Univer;
-- Select rows from a Table or View 'FACULTY' in schema 'S_Univer'
SELECT * FROM FACULTY;

--SELECT rows Teacher and pulpit from a table or view 'Teacher' in shema 'S_univer'

SELECT TEACHER, PULPIT FROM TEACHER;

--select row teacher_name where pulpit=ИСИТ
SELECT teacher_name FROM  TEACHER
WHERE PULPIT='ИСиТ';

--select row teacher_name where pulpit=ИСИТ or ПОиСОИ
SELECT teacher_name FROM  TEACHER
WHERE PULPIT='ИСиТ' or PULPIT='ПОиСОИ';

--select row tecahrname where gender='м' and  pulpit =ИСиТ

select teacher_name from TEACHER
WHERE gender='м' and PULPIT='ИСиТ';

--select distinct 

SELECT distinct PULPIT FROM TEACHER;

--select row auditorium from auditoriom orer by auditorium-caapcity
SELECT AUDITORIUM_NAME From AUDITORIUM
order by AUDITORIUM_CAPACITY


--select auditorium type from table auditorium
--where auditorium capacity top(2)
select distinct top(2) AUDITORIUM_TYPE,AUDITORIUM_CAPACITY FROM AUDITORIUM
ORDER by AUDITORIUM_CAPACITY;

--select row subject from table progress where marks between 8 and 10

SELECT distinct SUBJECT from PROGRESS
where NOTE between 8 and 10;

--select rows profession name and qualification 
--where qualification get string химик

SELECT PROFESSION_NAME, QUALIFICATION FROM PROFESSION
WHERE QUALIFICATION LIKE '%химик%';

--select row subject from table subject where pulpit=ЛЗиДВ, ПОиСОИ, ОВ

SELECT subject FROM subject 
where PULPIT='ЛЗиДВ' or PULPIT='ПОиСОИ' or PULPIT='ОВ';

