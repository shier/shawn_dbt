
  
  if object_id ('"dbo"."Auct_UpdateEvent_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateEvent_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UpdateEvent_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UpdateEvent_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UpdateEvent_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([UsersID] as int) [UsersID],
	cast([TableID] as int) [TableID],
	cast([OriginalData] as nvarchar(4000)) [OriginalData],
	cast([ActionTime] as datetime) [ActionTime],
	cast([ContactID] as int) [ContactID],
	cast([AuctionID] as int) [AuctionID],
	cast([AddressTypeID] as int) [AddressTypeID],
	cast([AddressID] as int) [AddressID],
	cast([Address1] as nvarchar(4000)) [Address1],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([StateProvince] as nvarchar(4000)) [StateProvince],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([Country] as int) [Country],
	cast([Careof] as nvarchar(4000)) [Careof],
	cast([DealerID] as int) [DealerID],
	cast([DealerNumber] as nvarchar(4000)) [DealerNumber],
	cast([DealerState] as nvarchar(4000)) [DealerState],
	cast([TaxIDNumber] as nvarchar(4000)) [TaxIDNumber],
	cast([TaxIDsTage] as nvarchar(4000)) [TaxIDsTage],
	cast([DealerComment] as nvarchar(4000)) [DealerComment],
	cast([AddressstatID] as int) [AddressstatID],
	cast([DealerstatID] as int) [DealerstatID],
	cast([DealernumExpire] as datetime) [DealernumExpire],
	cast([DeAlerTaxExpire] as datetime) [DeAlerTaxExpire] 
From stg.[Auct_UpdateEvent_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UpdateEvent_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UpdateEvent_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UpdateEvent_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UpdateEvent_FromStg__dbt_tmp_temp_view"
    end


