create view "stg"."Mer_Clovercache_InterView__dbt_tmp" as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	cast([CacheType] as nvarchar(4000)) [CacheType],
	cast([VALUE] as nvarchar(4000)) [Value]
From stg.[Mer_Clovercache_Raw]
