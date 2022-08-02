
  
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Auction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Auction_Inter__dbt_tmp_temp_view as
    
Select
	[AUCTIONID] [AuctionID],
	[SHOWONLINEBIDDING] [ShowOnlineBidding],
	[AUCTIONCOMPANYID] [AuctionCompanyID],
	[YEAR] [Year],
	cast([CODE] as nvarchar(4000)) [Code],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([READONLY] as nvarchar(4000)) [ReadOnly],
	[ONLINEAUCTION] [OnlineAuction],
	[CURRENTAUCTION] [CurrentAuction],
	[AUCTIONBEGINS] [AuctionBegins],
	[AUCTIONENDS] [AuctionEnds],
	cast([AUCTIONMODE] as nvarchar(4000)) [AuctionMode],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([PROJECT] as nvarchar(4000)) [Project],
	cast([NAVPULLTIME] as nvarchar(4000)) [NavPullTime],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[SEASONID] [SeasonID],
	[SHOWONWEB] [ShowonWeb],
	[USECDN] [UseCDN],
	cast([EMAEVENTID] as nvarchar(4000)) [EMAEventID],
	cast([EMACCEVENTID] as nvarchar(4000)) [EMACCEventID],
	cast([EMAMERCEVENTID] as nvarchar(4000)) [EmamercEventID],
	cast([EMASHOWEVENTID] as nvarchar(4000)) [EmashowEventID],
	[ISARCHIVED] [IsArchived],
	cast([CDNBASEURL] as nvarchar(4000)) [CDNBaseURL],
	[AUCTIONSTATUSBIT] [AuctionStatusBit],
	[EMAILNOTIFICATIONBIT] [EmailNotificationBit],
	[CREDENTIALGROUPID] [CredentialGroupID],
	[BIDDERBADGEID] [BidderBadgeID],
	[PULSEQUEUEID] [PulseQueueID],
	[AUCTIONTYPEID] [AuctionTypeID],
	[AUCTIONPICKUPCUTOFF] [AuctionPickupCutoff],
	[ONLINECARAUCTIONID] [OnlineCarAuctionID],
	[ONLINEMERCAUCTIONID] [OnlineMercAuctionID],
	cast([MAPIMAGEURL] as nvarchar(4000)) [MapImageURL],
	[NOTIFYCUSTOMERAFTERDATE] [NotifyCustomerAfterDate]
From stg.[Auct_Auction_Raw]
    ');

  CREATE TABLE "stg"."Auct_Auction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Auction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Inter__dbt_tmp_temp_view"
    end


