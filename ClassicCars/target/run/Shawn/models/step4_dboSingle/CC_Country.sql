
  
  if object_id ('"dbo"."CC_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Country__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Country__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Country__dbt_tmp"
    end


   EXEC('create view dbo.CC_Country__dbt_tmp_temp_view as
    
Select
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([CurrencynumCode] as nvarchar(4000)) [CurrencyNumCode],
	cast([CountryNameslug] as nvarchar(4000)) [CountryNameSlug],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_Country_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Country__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Country__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Country__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Country__dbt_tmp_temp_view"
    end


