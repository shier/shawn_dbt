
  
  if object_id ('"dbo"."Auct_Consignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Consignment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Consignment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Consignment__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Consignment__dbt_tmp_temp_view as
    
Select
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([ItemID] as int) [ItemID],
	cast([ConsignmentStatusID] as int) [ConsignmentStatusID],
	cast([AuctionID] as int) [AuctionID],
	cast([ReserveTypeID] as char(1)) [ReserveTypeID],
	cast([ShortDescription] as nvarchar(4000)) [ShortDescription],
	cast([LongDescription] as nvarchar(4000)) [LongDescription],
	cast([PhotosReceived] as char(1)) [PhotosReceived],
	cast([Showcase] as char(1)) [Showcase],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CarCard] as varchar(4000)) [CarCard],
	cast([Titlein] as char(1)) [TitleIn],
	cast([OnSite] as char(1)) [Onsite],
	cast([CheckedIn] as char(1)) [CheckedIn],
	cast([Completed] as char(1)) [Completed],
	cast([Canceled] as char(1)) [Canceled],
	cast([AddressID] as int) [AddressID],
	cast([CarInfoID] as int) [CarInfoID],
	cast([OnSpeed] as char(1)) [OnSpeed],
	cast([OnHagerty] as char(1)) [OnHagerty],
	cast([IsCharity] as int) [IsCharity],
	cast([CreatedUTC] as datetime) [CreatedUTC],
	cast([ModifiedUTC] as datetime) [ModifiedUTC],
	cast([EmainventoryID] as varchar(38)) [EMAInventoryID],
	cast([EMAEventID] as varchar(38)) [EMAEventID],
	cast([EMACCEventID] as varchar(38)) [EMACCEventID],
	cast([EmashowEventID] as varchar(38)) [EMAShowEventID],
	cast([EmamercEventID] as varchar(38)) [EMAMercEventID],
	cast([EmalotID] as varchar(38)) [EMALotID],
	cast([MarketingDescription] as nvarchar(4000)) [MarketingDescription],
	cast([AuthorizedWeb] as int) [AuthorizedWeb],
	cast([AuthorizedSocial] as int) [AuthorizedSocial],
	cast([AuthorizedMarketing] as int) [AuthorizedMarketing],
	cast([AuthorizedCarList] as int) [AuthorizedCarList],
	cast([LockMarketingDescription] as int) [LockMarketingDescription],
	cast([ReviewStateID] as int) [ReviewStateID],
	cast([DisplayStatusID] as int) [DisplayStatusID],
	cast([AssignedtoUserID] as int) [AssignedToUserID],
	cast([Priority] as int) [Priority],
	cast([Quality] as int) [Quality],
	cast([RequestedAuctionID] as int) [RequestedAuctionID],
	cast([StockNumber] as nvarchar(512)) [StockNumber],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([ModifiedByUserID] as int) [ModifiedByUserID],
	cast([ModifiedDateTime] as datetime) [ModifiedDate],
	cast([ModifiedFields] as nvarchar(4000)) [ModifiedFields],
	cast([ConsignmentCompleteStatusBit] as int) [ConsignmentCompleteStatusBIT],
	cast([ModifiedDetailsUTC] as datetime) [ModifiedDetailsUTC],
	cast([ModifiedDocketUTC] as datetime) [ModifiedDocketUTC],
	cast([PaymentStatusBit] as int) [PaymentStatusBIT],
	cast([OnlineauctonItemID] as int) [OnlineAuctionItemID],
	cast([OnlineAuctionauctionItemID] as int) [OnlineAuctionAuctionItemID],
	cast([ConsignmentNotifyBit] as int) [ConsignmentNotifyBIT],
	cast([ReserveAmount] as money) [ReserveAmount],
	cast([CusTestimatedValue] as money) [CustomerEstimatedValue],
	cast([BJValue] as money) [BJValue],
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([IsOutTakeVehicle] as bit) [IsOutTakeVehicle],
	cast([PaymentStatus] as bit) [PaymentStatus],
	cast([ReleasedForTransPort] as bit) [IsReleasedForTransport] 
From stg.[Auct_Consignment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Consignment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Consignment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Consignment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Consignment__dbt_tmp_temp_view"
    end


