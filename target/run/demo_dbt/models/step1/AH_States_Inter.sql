
  
  if object_id ('"stg"."AH_States_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_States_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_States_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_States_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_States_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Code] as nvarchar(4000)) [Code],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[Enabled] [Enabled],
	[CountryId] [CountryID]
From stg.[AH_States_Raw]
    ');

  CREATE TABLE "stg"."AH_States_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_States_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_States_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_States_Inter__dbt_tmp_temp_view"
    end


