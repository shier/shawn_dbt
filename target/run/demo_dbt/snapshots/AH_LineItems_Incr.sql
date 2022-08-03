
      
  
  if object_id ('"stg"."AH_LineItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_LineItems_Incr"','U') is not null
    begin
    drop table "stg"."AH_LineItems_Incr"
    end


   EXEC('create view stg.AH_LineItems_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:01:20.424900'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:01:20.424900'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:01:20.424900'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:01:20.424900''), CONVERT(DATETIME2, ''2022-07-29 18:01:20.424900'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[AH_LineItems_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."AH_LineItems_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_LineItems_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_LineItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Incr_temp_view"
    end



  