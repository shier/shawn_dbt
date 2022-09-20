
  
  if object_id ('"dbo"."AH_ListingLocations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingLocations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingLocations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingLocations__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingLocations__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([LocationID] as int) [LocationId],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_ListingLocations_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingLocations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingLocations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingLocations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingLocations__dbt_tmp_temp_view"
    end


