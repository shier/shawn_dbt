
  
  if object_id ('"stg"."Auct_Site_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Site_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Site_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Site_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Site_Inter__dbt_tmp_temp_view as
    
Select
	[SITEID] [SiteID],
	cast([NAME] as nvarchar(4000)) [Name],
	[PARENTSITEID] [ParentSiteID],
	[VENUEID] [VenueID],
	[SITETYPEID] [SiteTypeID],
	[ACTIVE] [Active]
From stg.[Auct_Site_Raw]
    ');

  CREATE TABLE "stg"."Auct_Site_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Site_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Site_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Site_Inter__dbt_tmp_temp_view"
    end

