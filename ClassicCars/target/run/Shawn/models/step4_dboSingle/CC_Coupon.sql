
  
  if object_id ('"dbo"."CC_Coupon__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Coupon__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Coupon__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Coupon__dbt_tmp"
    end


   EXEC('create view dbo.CC_Coupon__dbt_tmp_temp_view as
    
Select
	cast([IsActive] as bit) [IsActive],
	cast([Amount] as money) [Amount],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ID] as int) [Id],
	cast([CouponTypeID] as int) [CouponTypeId],
	cast([Code] as nvarchar(40)) [Code],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_Coupon_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Coupon__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Coupon__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Coupon__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Coupon__dbt_tmp_temp_view"
    end


