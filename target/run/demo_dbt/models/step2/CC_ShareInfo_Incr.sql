
      
  
  if object_id ('"stg"."CC_ShareInfo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ShareInfo_Incr"','U') is not null
    begin
    drop table "stg"."CC_ShareInfo_Incr"
    end


   EXEC('create view stg.CC_ShareInfo_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Longitude as varchar), Cast(Latitude as varchar), Browser, Appused, UserAgent, UserEmail, IpAddress, Cast(CreateDateUTC as varchar), Cast(ListingFK as varchar), Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ShareInfo_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ShareInfo_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ShareInfo_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ShareInfo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_Incr_temp_view"
    end



  