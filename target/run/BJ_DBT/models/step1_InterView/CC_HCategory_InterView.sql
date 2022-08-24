create view "stg"."CC_HCategory_InterView__dbt_tmp" as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([Parent] as nvarchar(4000)) [Parent],
	cast([Name] as nvarchar(4000)) [Name],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord]
From stg.[CC_HCategory_Raw]