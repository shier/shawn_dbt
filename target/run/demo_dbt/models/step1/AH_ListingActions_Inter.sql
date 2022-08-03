
  
  if object_id ('"stg"."AH_ListingActions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingActions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingActions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingActions_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingActions_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Reason] as nvarchar(4000)) [Reason],
	cast([Status] as nvarchar(4000)) [Status],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ActionDTTM] [Actiondttm],
	[Amount] [Amount],
	[ProxyAmount] [ProxyAmount],
	[UserEntered] [Userentered],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[Quantity] [Quantity]
From stg.[AH_ListingActions_Raw]
    ');

  CREATE TABLE "stg"."AH_ListingActions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingActions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingActions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingActions_Inter__dbt_tmp_temp_view"
    end

