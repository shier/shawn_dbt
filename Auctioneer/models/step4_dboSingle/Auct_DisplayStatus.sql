{{ config(materialized='table',schema='dbo')}}
Select
	cast([DisplayStatusID] as int) [DISPLAYSTATUSID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_DisplayStatus_FinalView]