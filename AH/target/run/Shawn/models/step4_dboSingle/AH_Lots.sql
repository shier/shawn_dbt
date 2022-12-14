
  
  if object_id ('"dbo"."AH_Lots__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Lots__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Lots__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Lots__dbt_tmp"
    end


   EXEC('create view dbo.AH_Lots__dbt_tmp_temp_view as
    
Select
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([IsSoftclosing] as bit) [IsSoftClosing],
	cast([SoftclosingGroup] as int) [SoftClosingGroup],
	cast([LotOrder] as int) [LotOrder],
	cast([AuctionEventID] as int) [AuctionEventID],
	cast([ID] as int) [Id],
	cast([ClosingGroup] as int) [ClosingGroup],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_Lots_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Lots__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Lots__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Lots__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Lots__dbt_tmp_temp_view"
    end


