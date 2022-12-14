{{ config(materialized='table',schema='dbo')}}
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PayToproceed] as bit) [PayToProceed],
	cast([ID] as int) [Id] 
From stg.[AH_Locations_FinalView]