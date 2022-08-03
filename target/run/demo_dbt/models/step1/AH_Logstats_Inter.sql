
  
  if object_id ('"stg"."AH_Logstats_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logstats_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Logstats_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Logstats_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Logstats_Inter__dbt_tmp_temp_view as
    
Select
	[FromDate] [FromDate],
	[RangeMinutes] [RangeMinutes],
	[EntryCount] [EntryCount],
	[IsArchived] [IsArchived],
	cast([Severity] as nvarchar(4000)) [Severity]
From stg.[AH_Logstats_Raw]
    ');

  CREATE TABLE "stg"."AH_Logstats_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Logstats_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Logstats_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Logstats_Inter__dbt_tmp_temp_view"
    end

