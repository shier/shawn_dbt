
  
  if object_id ('"dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Xml] as nvarchar(4000)) [Xml],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord] 
From stg.[CC_ModelDifferenceAspect_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModelDifferenceAspect_FromStg__dbt_tmp_temp_view"
    end


