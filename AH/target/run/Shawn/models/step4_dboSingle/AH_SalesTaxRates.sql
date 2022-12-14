
  
  if object_id ('"dbo"."AH_SalesTaxRates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SalesTaxRates__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_SalesTaxRates__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_SalesTaxRates__dbt_tmp"
    end


   EXEC('create view dbo.AH_SalesTaxRates__dbt_tmp_temp_view as
    
Select
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Shipping] as nvarchar(4000)) [Shipping],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([StateID] as int) [StateId],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([TaxRate] as numeric(19,4)) [TaxRate] 
From stg.[AH_SalesTaxRates_FinalView]
    ');

  CREATE TABLE "dbo"."AH_SalesTaxRates__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_SalesTaxRates__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_SalesTaxRates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SalesTaxRates__dbt_tmp_temp_view"
    end


