/****** Script for SelectTopNRows command from SSMS  ******/
USE helpspot
go

SELECT TOP 1000 
	req.stitle																AS Title,
	CAST(tt.[iSeconds] AS FLOAT)/60/60										AS TimeSpent,
    DATEADD(s,tt.[dtGMTDateAdded],CAST('1970-01-01 00:00:00' AS DATETIME))	AS DateAdded
FROM 
	[HelpSpot].[dbo].[HS_Time_Tracker] tt 
	INNER JOIN hs_request req 
	ON tt.xrequest = req.xrequest 
WHERE 
	tt.xperson = 55  -- RR


