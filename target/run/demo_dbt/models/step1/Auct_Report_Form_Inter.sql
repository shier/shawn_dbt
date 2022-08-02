
  
  if object_id ('"stg"."Auct_Report_Form_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Report_Form_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Report_Form_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Report_Form_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Report_Form_Inter__dbt_tmp_temp_view as
    
Select
	[FORMID] [FormID],
	[REPORTFORMID] [ReportFormID],
	[REPORTID] [ReportID],
	cast([EVENTID] as nvarchar(4000)) [EventID],
	[PACKAGEORDER] [PackageOrder],
	[AUCTIONID] [AuctionID],
	[ACTIVE] [Active]
From stg.[Auct_Report_Form_Raw]
    ');

  CREATE TABLE "stg"."Auct_Report_Form_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Report_Form_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Report_Form_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Report_Form_Inter__dbt_tmp_temp_view"
    end


