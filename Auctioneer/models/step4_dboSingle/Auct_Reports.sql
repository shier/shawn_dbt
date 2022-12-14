{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportsID] as int) [REPORTSID],
	cast([ReportsCategory] as nvarchar(4000)) [REPORTSCATEGORY],
	cast([ReportsTitle] as nvarchar(4000)) [REPORTSTITLE],
	cast([ReportsFileName] as nvarchar(4000)) [REPORTSFILENAME],
	cast([Auctionind] as nvarchar(4000)) [AUCTIONIND],
	cast([Accountind] as nvarchar(4000)) [ACCOUNTIND],
	cast([Auctiondayind] as nvarchar(4000)) [AUCTIONDAYIND],
	cast([Paymentind] as nvarchar(4000)) [PAYMENTIND],
	cast([Value1ind] as nvarchar(4000)) [VALUE1IND],
	cast([Value2ind] as nvarchar(4000)) [VALUE2IND],
	cast([Value3ind] as nvarchar(4000)) [VALUE3IND],
	cast([DateFromind] as nvarchar(4000)) [DATEFROMIND],
	cast([Datetoind] as nvarchar(4000)) [DATETOIND],
	cast([Value1Title] as nvarchar(4000)) [VALUE1TITLE],
	cast([Value1Example] as nvarchar(4000)) [VALUE1EXAMPLE],
	cast([Value2Title] as nvarchar(4000)) [VALUE2TITLE],
	cast([Value2Example] as nvarchar(4000)) [VALUE2EXAMPLE],
	cast([Value3Title] as nvarchar(4000)) [VALUE3TITLE],
	cast([Value3Example] as nvarchar(4000)) [VALUE3EXAMPLE],
	cast([DateFromTitle] as nvarchar(4000)) [DATEFROMTITLE],
	cast([DateFromExample] as nvarchar(4000)) [DATEFROMEXAMPLE],
	cast([DatetoTitle] as nvarchar(4000)) [DATETOTITLE],
	cast([DatetoExample] as nvarchar(4000)) [DATETOEXAMPLE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([IsexcelExport] as int) [ISEXCELEXPORT],
	cast([IsSorTable] as int) [ISSORTABLE],
	cast([Value4ind] as nvarchar(4000)) [VALUE4IND],
	cast([Value4Title] as nvarchar(4000)) [VALUE4TITLE],
	cast([Value4Example] as nvarchar(4000)) [VALUE4EXAMPLE] 
From stg.[Auct_Reports_FinalView]