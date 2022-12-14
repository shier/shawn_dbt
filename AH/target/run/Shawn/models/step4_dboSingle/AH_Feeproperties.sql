
  
  if object_id ('"dbo"."AH_Feeproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feeproperties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Feeproperties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Feeproperties__dbt_tmp"
    end


   EXEC('create view dbo.AH_Feeproperties__dbt_tmp_temp_view as
    
Select
	cast([Processor] as nvarchar(4000)) [Processor],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([EventID] as int) [EventId] 
From stg.[AH_Feeproperties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Feeproperties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Feeproperties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Feeproperties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Feeproperties__dbt_tmp_temp_view"
    end


