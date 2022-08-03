
  
  if object_id ('"stg"."Auct_UserTaskTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserTaskTypes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_UserTaskTypes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_UserTaskTypes_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_UserTaskTypes_Inter__dbt_tmp_temp_view as
    
Select
	TASKTYPEID TaskTypeID,
	USERID UserID
From Auct_UserTaskTypes_Raw
    ');

  CREATE TABLE "stg"."Auct_UserTaskTypes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_UserTaskTypes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_UserTaskTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_UserTaskTypes_Inter__dbt_tmp_temp_view"
    end

