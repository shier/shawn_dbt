
  
  if object_id ('"stg"."AH_CategoryListings_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryListings_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CategoryListings_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_CategoryListings_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_CategoryListings_Inter__dbt_tmp_temp_view as
    
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	ListingId ListingID,
	CategoryId CategoryID
From AH_CategoryListings_Raw
    ');

  CREATE TABLE "stg"."AH_CategoryListings_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CategoryListings_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_CategoryListings_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CategoryListings_Inter__dbt_tmp_temp_view"
    end


