use master;

IF DB_ID('Sobolev_Univer') is NOT NULL
    DROP DATABASE Sobolev_Univer;

CREATE database Sobolev_Univer;
use Sobolev_Univer;
GO
IF OBJECT_ID('student') is NOT NULL
    DROP TABLE student;
GO
CREATE TABLE student(
    numb_of_student int PRIMARY key,
    sutname NVARCHAR(20) not NULL,
    number_of_grupp int not NULL
);
GO
ALTER TABLE student ADD recipe_data date;
ALTER TABLE student ADD pol NVARCHAR(1);

go
INSERT INTO student(numb_of_student,sutname,number_of_grupp)
VALUES (11111,'sobolev',7),
        (11112,'lashkevich',7),
        (11113,'danilenko',7);
go

        


