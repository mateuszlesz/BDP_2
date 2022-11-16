DECLARE @YearsAgo int;
SET @YearsAgo = 10;
BEGIN

SELECT fcr.*,dc.CurrencyAlternateKey FROM [AdventureWorksDW2019].dbo.DimCurrency dc, [AdventureWorksDW2019].dbo.FactCurrencyRate fcr
where fcr.CurrencyKey = dc.CurrencyKey and dc.CurrencyAlternateKey in ('GBP','EUR') 
and fcr.Date <= DATEADD(year, -@YearsAgo, GETDATE())  ;

END;

