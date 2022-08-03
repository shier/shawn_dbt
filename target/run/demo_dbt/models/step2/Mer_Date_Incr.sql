
      
  
  if object_id ('"stg"."Mer_Date_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Date_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Date_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Date_Incr"
    end


   EXEC('create view stg.Mer_Date_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', Cast(Date as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Date_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_Date_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Date_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Date_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Date_Incr_temp_view"
    end



  