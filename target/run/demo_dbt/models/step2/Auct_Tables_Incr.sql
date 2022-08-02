
      
  
  if object_id ('"stg"."Auct_Tables_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Tables_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Tables_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Tables_Incr"
    end


   EXEC('create view stg.Auct_Tables_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(UsersID as varchar), Cast(DateCreated as varchar), TableName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Tables_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Tables_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Tables_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Tables_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Tables_Incr_temp_view"
    end



  