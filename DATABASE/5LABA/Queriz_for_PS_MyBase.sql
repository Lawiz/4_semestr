use PS_MyBase;

select *from holding_company;

select name_of_company, name_of_holding from companys;

select name_of_holding from companys
where name_of_company='��� ��������-1';


select bank_details from companys
where name_of_holding='��� �������-1' and name_of_company='��� ��������-1';

select distinct *from holding_company;


