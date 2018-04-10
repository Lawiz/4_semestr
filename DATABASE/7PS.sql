use PS_MyBase;

select name_of_crieterion from crieterions,holding_company
where crieterions.name_of_company in(select name_of_company from 
companys
where companys.name_of_holding=holding_company.name_of_holding
	 and holding_company.polycompany=1);


select name_of_crieterion FROM crieterions JOIN companys
	ON crieterions.name_of_company IN (SELECT name_of_company FROM companys,holding_company
	 WHERE companys.name_of_holding=holding_company.name_of_holding
	 and holding_company.polycompany=1);

select name_of_crieterion FROM crieterions JOIN companys
	ON crieterions.name_of_company IN (SELECT name_of_company FROM companys 
	join holding_company
	 on companys.name_of_holding=holding_company.name_of_holding
	 and holding_company.polycompany=1);
select name_of_crieterion from crieterions as c
where c.value_of_crieterion=(select top(1) cc.value_of_crieterion from crieterions as cc
where c.value_of_crieterion=cc.value_of_crieterion
order by name_of_crieterion desc);


select name_of_company from companys
where not exists(select * from holding_company
where holding_company.name_of_holding = companys.name_of_holding)

--select top(1) 
--(select avg(value_of_crieterion) from crieterions
 --where name_of_crieterion like '%критерий 1%')