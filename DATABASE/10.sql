use S_univer;

declare @int int =1, @char char, @varchar nvarchar(10)='sobolev', 
@datanow time=convert(time, getdate()), @var_numeric numeric(12,5),@date datetime;
--variables declaration
set @char ='x';
select @date=GETDATE();
declare @example_table_var table (tkey char(10), tname varchar(30));
insert into @example_table_var values('qwertyuioa','dnfvf');
--variables initialization

print @varchar;
select * from @example_table_var;
--out vatiables

--scrip output information depending on the capacity of the auditoriums
declare @auditorium_capacity int=(select sum(AUDITORIUM.AUDITORIUM_CAPACITY) from AUDITORIUM);
print 'auditorium capacity '+ cast(@auditorium_capacity as nvarchar(4))             

declare @avg_capacity decimal(2,2), @nuber_of_auditoiums_is_less_then_avg int,  @percent_of_auditoiums_is_less_then_avg decimal(3,2),
@number_of_auditorim int =(select count(*) from AUDITORIUM);
if 
@auditorium_capacity>200
begin
	--set data blck
	set @avg_capacity=@auditorium_capacity/@number_of_auditorim;
	set @nuber_of_auditoiums_is_less_then_avg=(select count(*) from AUDITORIUM where AUDITORIUM_CAPACITY<@avg_capacity);
	set @percent_of_auditoiums_is_less_then_avg=@nuber_of_auditoiums_is_less_then_avg/@number_of_auditorim;
	--output information blcock
	print @avg_capacity;

end
go

                                                                                                                                                                                                                                                 