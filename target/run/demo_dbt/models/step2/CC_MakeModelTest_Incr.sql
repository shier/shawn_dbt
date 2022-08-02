
      
  
  if object_id ('"stg"."CC_MakeModelTest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelTest_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelTest_Incr"','U') is not null
    begin
    drop table "stg"."CC_MakeModelTest_Incr"
    end


   EXEC('create view stg.CC_MakeModelTest_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(VehicleTypeID as varchar), Cast(CountryID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Modelplural, Makeslug, Modelslug, RelatedModelslugs, Make, Model, Makeplural)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_MakeModelTest_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_MakeModelTest_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelTest_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelTest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelTest_Incr_temp_view"
    end



  