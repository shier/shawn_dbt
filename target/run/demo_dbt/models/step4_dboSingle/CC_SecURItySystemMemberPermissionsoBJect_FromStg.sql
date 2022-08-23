
  
  if object_id ('"dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([Members] as nvarchar(4000)) [Members],
	cast([Criteria] as nvarchar(4000)) [Criteria],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [Allowwrite] 
From stg.[CC_SecURItySystemMemberPermissionsoBJect_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemMemberPermissionsoBJect_FromStg__dbt_tmp_temp_view"
    end

