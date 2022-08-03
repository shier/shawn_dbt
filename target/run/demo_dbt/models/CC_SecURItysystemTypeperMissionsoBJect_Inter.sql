
  
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view as
    
Select
	cast(Oid as nvarchar(4000)) OID,
	cast(TargetType as nvarchar(4000)) TargetType,
	cast(Owner as nvarchar(4000)) Owner,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	AllowWrite Allowwrite,
	AllowCreate AllowCreate,
	AllowDelete AllowDelete,
	AllowNavigate AllowNavigate,
	AllowRead AllowRead
From CC_SecURItysystemTypeperMissionsoBJect_Raw
    ');

  CREATE TABLE "stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemTypeperMissionsoBJect_Inter__dbt_tmp_temp_view"
    end

