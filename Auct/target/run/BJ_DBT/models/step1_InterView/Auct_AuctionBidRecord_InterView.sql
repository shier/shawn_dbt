create view "dbo_stg"."Auct_AuctionBidRecord_InterView__dbt_tmp" as
    
Select
	[AUCTIONBIDRECORDID] [AuctionBidRecordID],
	[LOTNUMBER] [LotNumber],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created]
From stg.[Auct_AuctionBidRecord_Raw]