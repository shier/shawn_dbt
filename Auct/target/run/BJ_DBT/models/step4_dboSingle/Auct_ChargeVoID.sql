
  
  if object_id ('"dbo"."Auct_ChargeVoID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeVoID__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ChargeVoID__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ChargeVoID__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ChargeVoID__dbt_tmp_temp_view as
    
Select
	cast([ChargeVoidID] as int) [ChargeVoidID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([UnitPrice] as numeric(18,0)) [UnitPrice],
	cast([ChargeID] as int) [ChargeID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([InvoiceID] as int) [InvoiceID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([IsTaxable] as nvarchar(4000)) [IsTaxable],
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
	cast([PEndingNavision] as nvarchar(4000)) [PEndingNavISION],
	cast([OverrideReason] as nvarchar(4000)) [OverrideReason],
	cast([ApprovalStateID] as int) [ApprovalStateID],
	cast([ApprovedByUserID] as int) [ApprovedByUserID],
	cast([RejectionReason] as nvarchar(4000)) [RejectionReason],
	cast([ActionDate] as DATETIME) [ActionDate] 
From stg.[Auct_ChargeVoID_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ChargeVoID__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ChargeVoID__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ChargeVoID__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ChargeVoID__dbt_tmp_temp_view"
    end


