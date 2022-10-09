--nhan vien 2
update [Person].[PersonPhone] 
set PhoneNumber =''
where BusinessEntityID=20

select *from[Person].[PersonPhone] 
where BusinessEntityID=20

--1d
select * from[Person].[Person]
where BusinessEntityID=135

update [Person].[Person] 
set FirstName =N'Võ Quốc Huy'
where BusinessEntityID=135

select *from [Person].[Person]
where BusinessEntityID=135
delete 
