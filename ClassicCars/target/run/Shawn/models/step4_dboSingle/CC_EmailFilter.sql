
  
  if object_id ('"dbo"."CC_EmailFilter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailFilter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_EmailFilter__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_EmailFilter__dbt_tmp"
    end


   EXEC('create view dbo.CC_EmailFilter__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([FilterCodeID] as int) [FilterCodeId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([FilterType] as nvarchar(4000)) [FilterType],
	cast([FilterValue] as nvarchar(4000)) [FilterValue] 
From stg.[CC_EmailFilter_FinalView]
    ');

  CREATE TABLE "dbo"."CC_EmailFilter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_EmailFilter__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_EmailFilter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_EmailFilter__dbt_tmp_temp_view"
    end


