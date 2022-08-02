
      
  
  if object_id ('"stg"."AH_ListingLocations_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingLocations_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingLocations_Incr"','U') is not null
    begin
    drop table "stg"."AH_ListingLocations_Incr"
    end


   EXEC('create view stg.AH_ListingLocations_Incr_temp_view as
    
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingLocations_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_ListingLocations_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingLocations_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_ListingLocations_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingLocations_Incr_temp_view"
    end



  