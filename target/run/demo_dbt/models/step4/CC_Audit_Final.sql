
  
  if object_id ('"stg"."CC_Audit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Audit_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Audit_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Audit_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_Audit_Final__dbt_tmp_temp_view as
    
Select
	[ShowcaseShuffle_AuditPK],[ListingID],[DateShowcasedUTC],[DateShowcaseExpiresUTC] 
From stg.[CC_Audit_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_Audit_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Audit_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Audit_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Audit_Final__dbt_tmp_temp_view"
    end

