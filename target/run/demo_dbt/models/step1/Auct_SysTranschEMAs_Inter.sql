
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysTranschEMAs_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysTranschEMAs_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view as
    
Select
	[tabid] [TaBID],
	cast([startlsn] as nvarchar(4000)) [Startlsn],
	cast([endlsn] as nvarchar(4000)) [Endlsn],
	[typeid] [TypeID]
From stg.[Auct_SysTranschEMAs_Raw]
    ');

  CREATE TABLE "stg"."Auct_SysTranschEMAs_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Inter__dbt_tmp_temp_view"
    end

