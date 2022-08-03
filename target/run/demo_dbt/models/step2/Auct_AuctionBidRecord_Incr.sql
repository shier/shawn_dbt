
      
  
  if object_id ('"stg"."Auct_AuctionBidRecord_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidRecord_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AuctionBidRecord_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AuctionBidRecord_Incr"
    end


   EXEC('create view stg.Auct_AuctionBidRecord_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(LotNumber as varchar), Cast(AuctionBidderNumber as varchar), Cast(AuctionID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionBidRecord_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AuctionBidRecord_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AuctionBidRecord_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AuctionBidRecord_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AuctionBidRecord_Incr_temp_view"
    end



  