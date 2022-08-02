
      
  
  if object_id ('"stg"."Auct_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysDiagrams_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysDiagrams_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysDiagrams_Incr"
    end


   EXEC('create view stg.Auct_SysDiagrams_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([Name], Cast([Principal_ID] as varchar), Cast([Diagram_ID] as varchar), Cast([Version] as varchar), Cast([Definition] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysDiagrams_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysDiagrams_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysDiagrams_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysDiagrams_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysDiagrams_Incr_temp_view"
    end



  