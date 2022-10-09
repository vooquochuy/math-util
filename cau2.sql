--cau2
select *from [Production].[Product]
SELECT        Production.Product.Name, Production.Product.ListPrice, Production.ProductSubcategory.Name AS Expr1
FROM            Production.Product INNER JOIN
                         Production.ProductSubcategory ON Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID
where Production.ProductSubcategory.Name in('Helmets','Tires and tubles')

select *from [Production].[ProductCategory]
--update [Production].[Product] set [ListPrice]=[ListPrice]*1.2 
where [ProductCategoryID] in(
SELECT        Production.ProductCategory.ProductCategoryID
FROM            Production.ProductCategory INNER JOIN
                         Production.ProductSubcategory ON Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID
where Production.ProductSubcategory.Name in('Helmets','Tires and tubles'))
--2b
alter database [AdventureWorks2008R2] set recovery full
backup database [AdventureWorks2008R2] to disk ='T:\16_VoQuocHuy_20001555\AdventureWorks2008R2_full.bak'
--xoa bang
delete  from [Purchasing].[PurchaseOrderDetail]

backup database [AdventureWorks2008R2] to disk ='T:\16_VoQuocHuy_20001555\AdventureWorks2008R2_diff.bak' with differential


drop database [AdventureWorks2008R2]
use master
restore database [AdventureWorks2008R2] 
from disk ='T:\16_VoQuocHuy_20001555\AdventureWorks2008R2_full.bak' with norecovery

restore database [AdventureWorks2008R2] 
from disk ='T:\16_VoQuocHuy_20001555\AdventureWorks2008R2_diff.bak' with recovery
