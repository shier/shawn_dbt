
  
  if object_id ('"stg"."AH_Feeproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feeproperties_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Feeproperties_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Feeproperties_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Feeproperties_Inter__dbt_tmp_temp_view as
    
Select
	Amount Amount,
	cast(Processor as nvarchar(4000)) Processor,
	cast(Name as nvarchar(4000)) Name,
	cast(Description as nvarchar(4000)) Description,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	Id ID,
	ListingTypeId ListingTypeID,
	EventId EventID
From AH_Feeproperties_Raw
    ');

  CREATE TABLE "stg"."AH_Feeproperties_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Feeproperties_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Feeproperties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Feeproperties_Inter__dbt_tmp_temp_view"
    end

