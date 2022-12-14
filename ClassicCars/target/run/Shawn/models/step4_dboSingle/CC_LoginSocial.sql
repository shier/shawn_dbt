
  
  if object_id ('"dbo"."CC_LoginSocial__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginSocial__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_LoginSocial__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_LoginSocial__dbt_tmp"
    end


   EXEC('create view dbo.CC_LoginSocial__dbt_tmp_temp_view as
    
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([SocialprovIDErID] as int) [SocialProviderId],
	cast([SocialprovIDErKey] as nvarchar(4000)) [SocialProviderKey],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_LoginSocial_FinalView]
    ');

  CREATE TABLE "dbo"."CC_LoginSocial__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_LoginSocial__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_LoginSocial__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_LoginSocial__dbt_tmp_temp_view"
    end


