
  
  if object_id ('"stg"."Auct_Acctcmpy_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Acctcmpy_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Acctcmpy_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Acctcmpy_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Acctcmpy_Inter__dbt_tmp_temp_view as
    
Select
	[ID] [ID],
	[AUCTIONID] [AuctionID],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Acctcmpy_Raw]
    ');

  CREATE TABLE "stg"."Auct_Acctcmpy_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Acctcmpy_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Acctcmpy_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Acctcmpy_Inter__dbt_tmp_temp_view"
    end

