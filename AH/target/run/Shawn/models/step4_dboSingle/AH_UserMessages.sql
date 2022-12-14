
  
  if object_id ('"dbo"."AH_UserMessages__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserMessages__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserMessages__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserMessages__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserMessages__dbt_tmp_temp_view as
    
Select
	cast([SEnderID] as int) [SenderId],
	cast([RecipientID] as int) [RecipientId],
	cast([MasTerMessageID] as int) [MasterMessageId],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([Sent] as datetime) [Sent],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([SuBJect] as nvarchar(4000)) [Subject],
	cast([Body] as nvarchar(4000)) [Body],
	cast([SEnderStatus] as nvarchar(4000)) [SenderStatus],
	cast([RecipientStatus] as nvarchar(4000)) [RecipientStatus],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_UserMessages_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserMessages__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserMessages__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserMessages__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserMessages__dbt_tmp_temp_view"
    end


