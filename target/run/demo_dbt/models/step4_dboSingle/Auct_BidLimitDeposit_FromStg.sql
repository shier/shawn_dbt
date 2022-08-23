
  
  if object_id ('"dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BidLimitDepositID] as int) [BIdLimitDepositid],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([EnvelopeNumber] as numeric(18,6)) [EnvelopeNumber],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([PaymentDate] as DATETIME) [PaymentDate],
	cast([PaymentNumber] as nvarchar(4000)) [PaymentNumber],
	cast([PaymentCleared] as nvarchar(4000)) [PaymentCleared],
	cast([ClearedDate] as DATETIME) [ClearedDate],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([BidderID] as int) [BidderID],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ConfirmIDEntification] as nvarchar(4000)) [ConfirmIDEntification],
	cast([ReceivedSignature] as nvarchar(4000)) [ReceivedSignature],
	cast([ConfirmedCount] as nvarchar(4000)) [ConfirmedCount],
	cast([NoPurchase] as nvarchar(4000)) [NoPurchase],
	cast([ReturnedOnSite] as nvarchar(4000)) [ReturnedOnsite],
	cast([Depositcashiering] as nvarchar(4000)) [Depositcashiering],
	cast([Depositmailed] as nvarchar(4000)) [Depositmailed],
	cast([Mailedhome] as nvarchar(4000)) [Mailedhome],
	cast([MailedBusiness] as nvarchar(4000)) [MailedBusiness],
	cast([MailedOther] as nvarchar(4000)) [MailedOther],
	cast([ReturnedOnSiteText] as nvarchar(4000)) [ReturnedOnsiteText],
	cast([DepositcashieringText] as nvarchar(4000)) [DepositcashieringText],
	cast([ReturnedComments] as nvarchar(4000)) [ReturnedComments],
	cast([ReturnedDate] as DATETIME) [ReturnedDate],
	cast([ReturnedUsersID] as int) [ReturnedUsersID],
	cast([PaymentID] as int) [PaymentID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([RefundedByBidLimitDepositID] as int) [RefundedByBidLimitDepositID],
	cast([RefundedBidLimitDepositID] as int) [RefundedBidLimitDepositID],
	cast([BidLimitDepositReturnTypeID] as int) [BidLimitDepositReturnTypeID] 
From stg.[Auct_BidLimitDeposit_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BidLimitDeposit_FromStg__dbt_tmp_temp_view"
    end


