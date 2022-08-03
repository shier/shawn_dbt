
      
  
  if object_id ('"stg"."CC_Auction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Auction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Auction_Incr"','U') is not null
    begin
    drop table "stg"."CC_Auction_Incr"
    end


   EXEC('create view stg.CC_Auction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Description, Location, ImageURL, WordPressTag, DateInfo, SiteURL, ContactURL, BidderURL, SellerURL, ThuMbnailURL, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(CompanyID as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Auction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Auction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Auction_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Auction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Auction_Incr_temp_view"
    end



  