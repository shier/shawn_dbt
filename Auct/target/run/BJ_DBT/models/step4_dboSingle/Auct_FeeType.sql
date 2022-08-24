
  
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeeType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeeType__dbt_tmp_temp_view as
    
Select
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([ShowonWeb] as bit) [ShowOnWeb],
	cast([DefaultAmount] as numeric(19,4)) [DefaultAmount],
	cast([DefaultPercentage] as numeric(18,6)) [DefaultPct],
	cast([Name] as nvarchar(512)) [FeeType],
	cast([FeeCategoryID] as int) [FeeCategoryID],
	cast([FeePayerID] as int) [FeePayerID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TaxRateID] as int) [TaxrateID],
	cast([AuctionID] as int) [AuctionID],
	cast([InActive] as nvarchar(512)) [Inactive],
	cast([ProcessorID] as int) [ProcessorID],
	cast([UseMultiplier] as int) [Usemultiplier],
	cast([DebitProcessor] as nvarchar(512)) [DebitProcessor],
	cast([CreditProcessor] as nvarchar(512)) [CreditProcessor],
	cast([PaymentProcessor] as nvarchar(512)) [PaymentProcessor],
	cast([RefundProcessor] as nvarchar(512)) [RefundProcessor],
	cast([WebStartDate] as datetime) [WebStartDate],
	cast([WebEndDate] as datetime) [WebEndDate],
	cast([Amenities] as nvarchar(512)) [Amenities],
	cast([SectionTitle] as nvarchar(512)) [SectionTitle],
	cast([ExpirationMessage] as nvarchar(512)) [ExpirationMessage],
	cast([FeeTypeGUID] as nvarchar(512)) [FeeTypeGUID],
	cast([ApplicationReportID] as int) [ApplicationReportID],
	cast([OnlineApplicationReportID] as int) [OnlineApplicationReportID],
	cast([DocumentID] as nvarchar(512)) [DocumentID],
	cast([BCProcessFor] as nvarchar(512)) [BcProcessfor],
	cast([BCdocumentType] as nvarchar(512)) [BcdocumentType] 
From stg.[Auct_FeeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeeType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeeType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeeType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeeType__dbt_tmp_temp_view"
    end


