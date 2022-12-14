{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaPositionID] as int) [MEDIAPOSITIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_MediaPosition_FinalView]