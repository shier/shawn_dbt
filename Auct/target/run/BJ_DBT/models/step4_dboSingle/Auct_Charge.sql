
  
  if object_id ('"dbo"."Auct_Charge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charge__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Charge__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Charge__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Charge__dbt_tmp_temp_view as
    
Select
	cast([ChargeID] as int) [ChargeID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([UnitPrice] as numeric(19,4)) [UnitPrice],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([Comments] as nvarchar(512)) [Comments],
	cast([IsTaxable] as bit) [IsTaxable],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([BidderID] as int) [BidderID],
	cast([DealerID] as int) [DealerID],
	cast([VendorID] as int) [VendorID],
	cast([MediaID] as int) [MediaID],
	cast([SponsorID] as int) [SponsorID],
	cast([UserID] as int) [UserID],
	cast([CanCancel] as int) [CanCancel],
	cast([CanceledByChargeID] as int) [CanceledByChargeID],
	cast([CanceledChargeID] as int) [CanceledChargeID],
	cast([ReservationID] as int) [ReservationID],
	cast([PEndingNavision] as nvarchar(512)) [PendingNavision],
	cast([OverrideReason] as nvarchar(512)) [OverrideReason],
	cast([ApprovalStateID] as int) [ApprovalStateID],
	cast([ApprovedByUserID] as int) [ApprovedByUserID],
	cast([RejectionReason] as nvarchar(512)) [RejectionReason],
	cast([ActionDate] as datetime) [ActionDate],
	cast([DocumentID] as nvarchar(512)) [DocumentID] 
From stg.[Auct_Charge_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Charge__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Charge__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Charge__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Charge__dbt_tmp_temp_view"
    end


