
  
  if object_id ('"dbo"."CC_Favorites__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Favorites__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Favorites__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Favorites__dbt_tmp"
    end


   EXEC('create view dbo.CC_Favorites__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ModifyDateUTC] as datetime) [ModifyDateUTC],
	cast([FavoritePK] as int) [FavoritePK],
	cast([ListingFK] as int) [ListingFK],
	cast([UserFK] as int) [UserFK],
	cast([DataTokenID] as uniqueidentifier) [DataTokenID] 
From stg.[CC_Favorites_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Favorites__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Favorites__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Favorites__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Favorites__dbt_tmp_temp_view"
    end


