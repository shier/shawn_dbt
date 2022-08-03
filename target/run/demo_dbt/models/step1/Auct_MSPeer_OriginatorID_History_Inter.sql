
  
  if object_id ('"stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view as
    
Select
	[originator_id] [Originator_ID],
	cast([originator_publication] as nvarchar(4000)) [Originator_Publication],
	cast([originator_node] as nvarchar(4000)) [Originator_Node],
	cast([originator_db] as nvarchar(4000)) [Originator_Db],
	[originator_db_version] [Originator_Db_Version],
	[originator_version] [Originator_Version],
	[inserted_date] [Inserted_Date]
From stg.[Auct_MSPeer_OriginatorID_History_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_OriginatorID_History_Inter__dbt_tmp_temp_view"
    end

