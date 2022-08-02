
  
  if object_id ('"stg"."CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SavedSearchesaudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SavedSearchesaudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view as
    
Select
	AuditEntryDateUTC AuditentryDateUTC,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	SavedSearchAuditPK SavedSearchauditpk,
	Id ID,
	UserId UserID,
	YearFrom YearFrom,
	YearTo Yearto,
	Distance Distance,
	VehicleTypeId VehicleTypeID,
	AlertModeId AlertModeID,
	AlertFrequencyId AlertFrequencyID,
	PriceFrom PriceFrom,
	PriceTo Priceto,
	IsActive IsActive,
	IncludePrivate IncludePrivate,
	IncludeDealer IncludeDealer,
	IncludeAuction IncludeAuction,
	cast(State as nvarchar(4000)) State,
	cast(ZipCode as nvarchar(4000)) ZipCode,
	cast(SearchDescription as nvarchar(4000)) SearchDescription,
	cast(DML_Operation as nvarchar(4000)) Dml_Operation,
	cast(SavedSearchName as nvarchar(4000)) SavedSearchName,
	cast(Make as nvarchar(4000)) Make,
	cast(Model as nvarchar(4000)) Model,
	cast(Country as nvarchar(4000)) Country
From CC_SavedSearchesaudit_Raw
    ');

  CREATE TABLE "stg"."CC_SavedSearchesaudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesaudit_Inter__dbt_tmp_temp_view"
    end


