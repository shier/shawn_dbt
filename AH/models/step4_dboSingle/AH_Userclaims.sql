{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ClaimType] as nvarchar(4000)) [ClaimType],
	cast([ClaimValue] as nvarchar(4000)) [ClaimValue] 
From stg.[AH_Userclaims_FinalView]