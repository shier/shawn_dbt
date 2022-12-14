
  
  if object_id ('"dbo"."CC_ListingTrackRuns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRuns__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingTrackRuns__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingTrackRuns__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingTrackRuns__dbt_tmp_temp_view as
    
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ID] as int) [Id],
	cast([StartID] as int) [StartId],
	cast([EndID] as int) [EndId],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ListingTrackRuns_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingTrackRuns__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingTrackRuns__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingTrackRuns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingTrackRuns__dbt_tmp_temp_view"
    end


