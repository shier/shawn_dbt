
      
  
  if object_id ('"stg"."AH_ListingTypeMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeMedia_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingTypeMedia_Incr"','U') is not null
    begin
    drop table "stg"."AH_ListingTypeMedia_Incr"
    end


   EXEC('create view stg.AH_ListingTypeMedia_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:28:01.844379'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:28:01.844379'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:28:01.844379'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:28:01.844379''), CONVERT(DATETIME2, ''2022-08-24 12:28:01.844379'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[AH_ListingTypeMedia_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."AH_ListingTypeMedia_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingTypeMedia_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_ListingTypeMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingTypeMedia_Incr_temp_view"
    end



  