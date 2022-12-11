SELECT  fis.OrderDate, count(fis.OrderDate) Orders_cnt FROM [dbo].[FactInternetSales] fis 
group by fis.OrderDate
ORder by Orders_cnt DESC;


SELECT  fis.OrderDate, count(fis.OrderDate) Orders_cnt FROM [dbo].[FactInternetSales] fis
group by fis.OrderDate
having count(fis.OrderDate) <100
order by Orders_cnt DESC;


SELECT fisu.OrderDate, fisu.UnitPrice FROM 
(
SELECT  fis.OrderDate, 
 ROW_NUMBER() OVER(PARTITION BY OrderDate
 ORDER BY UnitPrice DESC) AS "Row_num",
 UnitPrice
 FROM [dbo].[FactInternetSales] fis

 ) fisu where [Row_num] <4
 order by OrderDate;