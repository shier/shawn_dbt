
  
  if object_id ('"dbo"."Auct_AuctionBidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidder__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidder__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidder__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidder__dbt_tmp_temp_view as
    
Select
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([HoldPackageatWillCall] as bit) [HoldPackageAtWillCall],
	cast([AuctionID] as int) [AuctionID],
	cast([BidderID] as int) [BidderID],
	cast([AuctionBidderNumber] as int) [AuctionBidderNumber],
	cast([RegistrationDate] as datetime) [RegistrationDate],
	cast([Comments] as varchar(512)) [Comments],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BankAccountID] as int) [BankAccountID],
	cast([Insurance] as char(1)) [Insurance],
	cast([DriverLicense] as char(1)) [DriverLicense],
	cast([DealerLicense] as char(1)) [DealerLicense],
	cast([TaxCertificate] as char(1)) [TaxCertificate],
	cast([AuthBidLetter] as char(1)) [AuthBidLetter],
	cast([OwnershipLetter] as char(1)) [OwnershipLetter],
	cast([OtherLetter] as char(1)) [OtherLetter],
	cast([RockDoc] as char(1)) [RockDoc],
	cast([InsuranceExpire] as datetime) [InsuranceExpireDate],
	cast([InsuranceID] as int) [InsuranceID],
	cast([MethODOfPayment] as char(1)) [PaymentMethod],
	cast([RegistrationFee] as char(1)) [RegistrationFee],
	cast([SignedAgreement] as char(1)) [SignedAgreement],
	cast([PacketatWillCall] as char(1)) [PackageAtWillCall],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([SkyBoxPassCount] as int) [SkyBoxPassCount],
	cast([BidLimit] as int) [BidLimit],
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([CompleteStatusBit] as int) [CompleteStatusBIT],
	cast([BidderRequestID] as uniqueidentifier) [BidderRequestID],
	cast([ShippingAddressID] as int) [ShippingAddressID],
	cast([ContactPhoneID] as int) [ContactPhoneID],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([AddressID] as int) [AddressID],
	cast([BidLimiTestimate] as int) [BidLimitEstimate],
	cast([TrackingNumber] as nvarchar(128)) [TrackingNumber],
	cast([DocumentationBit] as int) [DocumentationBIT],
	cast([AuctionBidderSourceID] as int) [AuctionBidderSourceID],
	cast([RegisteredOnlineBit] as int) [RegisteredOnlineBIT],
	cast([ChargeCount] as int) [ChargeCount] 
From stg.[Auct_AuctionBidder_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidder__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidder__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidder__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidder__dbt_tmp_temp_view"
    end


