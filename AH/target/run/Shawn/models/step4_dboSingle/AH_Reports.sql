
  
  if object_id ('"dbo"."AH_Reports__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Reports__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Reports__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Reports__dbt_tmp"
    end


   EXEC('create view dbo.AH_Reports__dbt_tmp_temp_view as
    
Select
	cast([SecondstogeneRate] as numeric(19,4)) [SecondsToGenerate],
	cast([ReportName] as nvarchar(4000)) [ReportName],
	cast([Data] as nvarchar(4000)) [Data],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId] 
From stg.[AH_Reports_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Reports__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Reports__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Reports__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Reports__dbt_tmp_temp_view"
    end


