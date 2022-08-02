
      
  
  if object_id ('"stg"."AH_Contactus_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contactus_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Contactus_Incr"','U') is not null
    begin
    drop table "stg"."AH_Contactus_Incr"
    end


   EXEC('create view stg.AH_Contactus_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(LastName, Message, Email, FirstName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Contactus_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_Contactus_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Contactus_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_Contactus_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contactus_Incr_temp_view"
    end



  