
      
  
  if object_id ('"stg"."CC_ListingSources_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingSources_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingSources_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingSources_Incr"
    end


   EXEC('create view stg.CC_ListingSources_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ListingSourcePK as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:59:11.061978'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:59:11.061978'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:59:11.061978'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:59:11.061978''), CONVERT(DATETIME2, ''2022-08-24 12:59:11.061978'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[CC_ListingSources_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."CC_ListingSources_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingSources_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingSources_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingSources_Incr_temp_view"
    end



  