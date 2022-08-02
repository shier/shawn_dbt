
      
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ConflictDetectionConfigResponse_Incr"
    end


   EXEC('create view stg.Auct_ConflictDetectionConfigResponse_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Request_ID] as varchar), Cast([Peer_Version] as varchar), Cast([Peer_Db_Version] as varchar), Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), Cast([Is_Peer] as varchar), Cast([ConflictDetection_Enabled] as varchar), Cast([Peer_Continue_OnConflict] as varchar), Cast([Modified_Date] as varchar), [Peer_Node], [Peer_Db], [Peer_SubScriptions], [Progress_Phase])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ConflictDetectionConfigResponse_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ConflictDetectionConfigResponse_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConflictDetectionConfigResponse_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Incr_temp_view"
    end



  