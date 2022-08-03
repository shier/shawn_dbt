
  
  if object_id ('"stg"."Auct_ConsignmentLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignmentLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignmentLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignmentLog_Inter__dbt_tmp_temp_view as
    
Select
	[CONSIGNMENTLOGID] [ConsignmentLogID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([NOTETYPE] as nvarchar(4000)) [NoteType],
	cast([NOTE] as nvarchar(4000)) [Note],
	[USERSID] [UsersID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CUSTOMERACCOUNTID] [CustomerAccountID]
From stg.[Auct_ConsignmentLog_Raw]
    ');

  CREATE TABLE "stg"."Auct_ConsignmentLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignmentLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignmentLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentLog_Inter__dbt_tmp_temp_view"
    end

