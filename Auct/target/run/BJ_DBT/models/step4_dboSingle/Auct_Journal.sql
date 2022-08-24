
  
  if object_id ('"dbo"."Auct_Journal__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Journal__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Journal__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Journal__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Journal__dbt_tmp_temp_view as
    
Select
	cast([JournalID] as int) [JournalID],
	cast([AuctionID] as int) [AuctionID],
	cast([ProjectID] as int) [ProjectID],
	cast([Ln] as int) [Ln],
	cast([AccountID] as int) [AccountID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([TimeCreated] as DATETIME) [TimeCreated],
	cast([JournalType] as nvarchar(4000)) [JournalType],
	cast([DepositID] as nvarchar(4000)) [DepositID],
	cast([CarConsignmentID] as int) [CarConsignmentID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([BidderID] as int) [BidderID],
	cast([DealerID] as int) [DealerID],
	cast([VendorID] as int) [VendorID],
	cast([MediaID] as int) [MediaID],
	cast([SponsorID] as int) [SponsorID],
	cast([VendorSpaceID] as int) [VendorSpaceID],
	cast([InventoryID] as int) [InventoryID],
	cast([ContactName] as nvarchar(4000)) [ContactName],
	cast([Address] as nvarchar(4000)) [Address],
	cast([City] as nvarchar(4000)) [City],
	cast([StateProvince] as nvarchar(4000)) [StateProvince],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([Country] as int) [Country],
	cast([Phoneac] as nvarchar(4000)) [Phoneac],
	cast([Phone] as nvarchar(4000)) [Phone],
	cast([Description] as nvarchar(4000)) [Description],
	cast([PaymentMethod] as int) [PaymentMethod],
	cast([CheckNumber] as nvarchar(4000)) [CheckNumber],
	cast([CreditCardNumber] as nvarchar(4000)) [CreditCardNumber],
	cast([CreditCardExp] as nvarchar(4000)) [CreditCardExp],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([DateCreated] as DATETIME) [DateCreated],
	cast([CreatedBy] as nvarchar(4000)) [CreatedBy],
	cast([DateModified] as DATETIME) [DateModified],
	cast([ModifiedBy] as nvarchar(4000)) [ModifiedBy],
	cast([ServerCreatedBy] as nvarchar(4000)) [ServerCreatedBy],
	cast([ServerModifiedBy] as nvarchar(4000)) [ServerModifiedBy],
	cast([Status] as nvarchar(4000)) [Status],
	cast([Credit] as numeric(19,4)) [Credit],
	cast([Debit] as numeric(19,4)) [DeBit],
	cast([Rn] as numeric(18,2)) [Rn] 
From stg.[Auct_Journal_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Journal__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Journal__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Journal__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Journal__dbt_tmp_temp_view"
    end


