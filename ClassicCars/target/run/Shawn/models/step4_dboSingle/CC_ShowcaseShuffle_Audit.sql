
  
  if object_id ('"dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp"
    end


   EXEC('create view dbo.CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view as
    
Select
	cast([DateShowcasedUTC] as datetime) [DateShowcasedUTC],
	cast([DateShowcaseExpiresUTC] as datetime) [DateShowcaseExpiresUTC],
	cast([ShowcaseShuffle_AuditPK] as int) [ShowcaseShuffle_AuditPK],
	cast([ListingID] as int) [ListingId] 
From stg.[CC_ShowcaseShuffle_Audit_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ShowcaseShuffle_Audit__dbt_tmp_temp_view"
    end


