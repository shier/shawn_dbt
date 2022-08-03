
  
  if object_id ('"stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view as
    
Select
	cast(Description as nvarchar(4000)) Description,
	Id ID
From CC_BuyerInquiryadfOptions_Raw
    ');

  CREATE TABLE "stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiryadfOptions_Inter__dbt_tmp_temp_view"
    end

