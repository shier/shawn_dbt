{{ config(materialized='table',schema='dbo')}}
SELECT
	[Auction_Skey],
	[AuctionID],
	[AuctionCompanyID],
	[Year],
	[Code],
	[Name],
	[ReadOnly],
	[OnlineAuction],
	[CurrentAuction],
	[AuctionBegins],
	[AuctionEnds],
	[AuctionMode],
	[City],
	[State],
	[County],
	[Created],
	[UpdateEventID],
	[Project],
	[BusinessUnit],
	[SeasonID],
	[ShowOnWeb],
	[UseCDN],
	[EMAEventID],
	[EMACCEventID],
	[EMAMercEventID],
	[EMAShowEventID],
	[IsArchived],
	[CDNBaseURL],
	[ShowOnlineBidding],
	[AuctionStatusBIT],
	[EmailNotificationBIT],
	[CredentialGroupID],
	[BidderBadgeID],
	[PulseQueueID],
	[AuctionTypeID],
	[AuctionPickUpCutOff],
	[OnlineCarAuctionID],
	[OnlineMerchAuctionID],
	[MapImageURL],
	[NotifyCustomerAfterDate]
FROM [stg].[Auct_Auction_DM_stg]