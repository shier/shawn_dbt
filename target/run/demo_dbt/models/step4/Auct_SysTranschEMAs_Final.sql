
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysTranschEMAs_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysTranschEMAs_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysTranschEMAs_Final__dbt_tmp_temp_view as
    
Select
	[TaBID],[TypeID],[Startlsn],[Endlsn] 
From [Auct_SysTranschEMAs_Incr]
    ');

  CREATE TABLE "stg"."Auct_SysTranschEMAs_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysTranschEMAs_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysTranschEMAs_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysTranschEMAs_Final__dbt_tmp_temp_view"
    end


