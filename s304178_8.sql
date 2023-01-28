
CREATE TABLE AdventureWorksDW2019.dbo.AUDIT_TABLE 
(
JobID INT ,
StartDT datetime,
EndDT datetime,
Rowcnt INT
);

SELECT * FROM dbo.AUDIT_TABLE