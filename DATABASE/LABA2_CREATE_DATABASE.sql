use master;
if DB_ID('PS_MyBase') is not NULL
    DROP DATABASE PS_MyBase;
CREATE DATABASE PS_MyBase
ON 
PRIMARY 
(
    NAME=ps1,
    FILENAME='c:\ps\ps1.mdf',
    SIZE=1MB,
    MAXSIZE=2,
    FILEGROWTH=1MB
),
FILEGROUP TASK1
(
    NAME=TASK1,
    FILENAME='c:\ps\task1.ndf',
    SIZE=1MB,
    MAXSIZE=2,
    FILEGROWTH=1MB
)
LOG ON 
(
    NAME=LOG1,
    FILENAME='C:\ps\log1.ldf',
    size=2mb,
    maxsize=4mb,
    FILEGROWTH=2MB
)
use PS_MyBase;
if OBJECT_ID('holding_company') is not NULL
    drop TABLE holding_company;
CREATE TABLE holding_company (
    name_of_holding nvarchar(40) primary key,
	polycompany bit
);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-1',1);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-2',1);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-3',0);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-4',0);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-5',0);
INSERT INTO holding_company(name_of_holding, polycompany) VALUES('мой холдинг-6',0);




if OBJECT_ID('companys') is not NULL
    DROP TABLE companys;
CREATE TABLE companys(
	name_of_holding nvarchar(40)constraint name_of_holdingFK foreign key references holding_company(name_of_holding),
	name_of_company nvarchar(20) primary key,
    bank_details nvarchar(40) not NULL,
    number_phone nVARCHAR (13) not NULL,
    The_contact_person nvarchar(20) not NULL,
	type_of_owneship nvarchar(20) NOT NULL
);
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-1',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-2',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-3',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-4',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-5',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-6',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-7',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-8',(select top(1) name_of_holding from holding_company),'банковские данные-1','номер-1','лицо-1','форма-1');


--заполненение второго холдинга..........................................................................................
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-12',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-22',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');
INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-32',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-42',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-52',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-62',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');

INSERT INTO companys(name_of_company,name_of_holding,bank_details,number_phone,The_contact_person,type_of_owneship)
values('моя компания-72',(select top(1) name_of_holding from holding_company where name_of_holding like '%2%'),'банковские данные-1','номер-1','лицо-1','форма-1');



if OBJECT_ID('crieterions') is NOT NULL
    DROP TABLE crieterions;
CREATE TABLE crieterions(
    name_of_crieterion   nvarchar(20)   not NULL,
    value_of_crieterion nVARCHAR(20)  not NULL,
    crieterion_import_index int not NULL,
    name_of_company nvarchar(20)constraint Name_of_companyFK foreign key references companys(name_of_company),
    verification_date date not NULL,
) on TASK1;

INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 1','значение 1',1,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 2','значение 2',2,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 3','значение 3',3,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 4','значение 4',4,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 5','значение 5',5,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 6','значение 6',6,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 7','значение 7',7,(select top(1) name_of_company from companys where name_of_company like '%1%'),'2012-01-01');



INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 1','значение 1',1,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 2','значение 2',2,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 3','значение 3',3,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 4','значение 4',4,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 5','значение 5',5,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 6','значение 6',6,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
INSERT INTO crieterions(name_of_crieterion,value_of_crieterion,crieterion_import_index,name_of_company,verification_date)
values('критерий 7','значение 7',7,(select top(1) name_of_company from companys where name_of_company like '%2%'),'2012-01-01');
