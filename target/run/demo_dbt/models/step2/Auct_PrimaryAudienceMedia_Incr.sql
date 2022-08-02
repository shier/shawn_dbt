
      
  
  if object_id ('"stg"."Auct_PrimaryAudienceMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PrimaryAudienceMedia_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PrimaryAudienceMedia_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PrimaryAudienceMedia_Incr"
    end


   EXEC('create view stg.Auct_PrimaryAudienceMedia_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(MediaID as varchar), Cast(PrimaryAudienceID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PrimaryAudienceMedia_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PrimaryAudienceMedia_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PrimaryAudienceMedia_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PrimaryAudienceMedia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PrimaryAudienceMedia_Incr_temp_view"
    end



  