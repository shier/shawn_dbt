
      
  
  if object_id ('"stg"."Mer_CloverInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_CloverInventory_Incr"','U') is not null
    begin
    drop table "stg"."Mer_CloverInventory_Incr"
    end


   EXEC('create view stg.Mer_CloverInventory_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 13:13:18.148118'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 13:13:18.148118'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 13:13:18.148118'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 13:13:18.148118''), CONVERT(DATETIME2, ''2022-08-24 13:13:18.148118'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Mer_CloverInventory_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Mer_CloverInventory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_CloverInventory_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_CloverInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Incr_temp_view"
    end



  