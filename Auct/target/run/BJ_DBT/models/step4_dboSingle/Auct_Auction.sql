
  
  if object_id ('"dbo"."Auct_Auction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auction__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Auction__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Auction__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Auction__dbt_tmp_temp_view as
    
Select
	cast([AuctionID] as int) [AuctionID],
	cast([ShowOnlineBidding] as bit) [ShowOnlineBidding],
	cast([AuctionCompanyID] as int) [AuctionCompanyID],
	cast([Year] as int) [Year],
	cast([Code] as char(5)) [Code],
	cast([Name] as nvarchar(100)) [Name],
	cast([ReadOnly] as char(1)) [ReadOnly],
	cast([OnlineAuction] as int) [OnlineAuction],
	cast([CurrentAuction] as int) [CurrentAuction],
	cast([AuctionBegins] as datetime) [AuctionBegins],
	cast([AuctionEnds] as datetime) [AuctionEnds],
	cast([AuctionMode] as char(10)) [AuctionMode],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Project] as varchar(20)) [Project],
	cast([BusinessUnit] as varchar(50)) [BusinessUnit],
	cast([SeasonID] as int) [SeasonID],
	cast([ShowonWeb] as int) [ShowOnWeb],
	cast([UseCDN] as int) [UseCDN],
	cast([EMAEventID] as varchar(38)) [EMAEventID],
	cast([EMACCEventID] as varchar(38)) [EMACCEventID],
	cast([EmamercEventID] as varchar(38)) [EMAMercEventID],
	cast([EmashowEventID] as varchar(38)) [EMAShowEventID],
	cast([IsArchived] as int) [IsArchived],
	cast([CDNBaseURL] as varchar(2048)) [CDNBaseURL],
	cast([AuctionStatusBit] as int) [AuctionStatusBIT],
	cast([EmailNotificationBit] as int) [EmailNotificationBIT],
	cast([CredentialGroupID] as int) [CredentialGroupID],
	cast([BidderBadgeID] as int) [BidderBadgeID],
	cast([PulseQueueID] as int) [PulseQueueID],
	cast([AuctionTypeID] as int) [AuctionTypeID],
	cast([AuctionPickupCutoff] as datetime) [AuctionPickUpCutOff],
	cast([OnlineCarAuctionID] as int) [OnlineCarAuctionID],
	cast([OnlineMercAuctionID] as int) [OnlineMerchAuctionID],
	cast([MapImageURL] as varchar(2048)) [MapImageURL],
	cast([NotifyCustomerAfterDate] as datetime) [NotifyCustomerAfterDate] 
From stg.[Auct_Auction_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Auction__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Auction__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Auction__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auction__dbt_tmp_temp_view"
    end


