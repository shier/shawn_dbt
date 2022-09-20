
  
  if object_id ('"dbo"."CC_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Payment__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Payment__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Payment__dbt_tmp"
    end


   EXEC('create view dbo.CC_Payment__dbt_tmp_temp_view as
    
Select
	cast([TransactionID] as nvarchar(50)) [TransactionId],
	cast([ResponseReasonCode] as nvarchar(50)) [ResponseReasonCode],
	cast([ResponseCode] as nvarchar(50)) [ResponseCode],
	cast([AuthorizationCode] as nvarchar(50)) [AuthorizationCode],
	cast([Approved] as bit) [Approved],
	cast([PayerId] as nvarchar(30)) [PayerId],
	cast([Token] as nvarchar(30)) [Token],
	cast([CardLastFour] as char) [CardLastFour],
	cast([Year] as nvarchar) [Year],
	cast([Month] as nvarchar) [Month],
	cast([CardCountry] as nvarchar(40)) [CardCountry],
	cast([State] as nvarchar(40)) [State],
	cast([Address2] as varchar(128)) [Address2],
	cast([Address1] as nvarchar(200)) [Address1],
	cast([City] as nvarchar(40)) [City],
	cast([CardName] as nvarchar(500)) [CardName],
	cast([Success] as bit) [Success],
	cast([ChargeAmount] as money) [ChargeAmount],
	cast([OrderDiscount] as money) [OrderDiscount],
	cast([OrderTotal] as money) [OrderTotal],
	cast([CouponID] as int) [CouponId],
	cast([PaymentTypeID] as int) [PaymentTypeId],
	cast([UserID] as int) [UserId],
	cast([IsActive] as bit) [IsActive],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ID] as int) [Id],
	cast([ID] as int) [Id],
	cast([ErrorCode] as nvarchar(10)) [ErrorCode],
	cast([ErrorTransactionID] as nvarchar(30)) [ErrorTransactionID],
	cast([PaymentStatus] as nvarchar(20)) [PaymentStatus],
	cast([ListingID] as int) [ListingId],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName],
	cast([ZipCode] as nvarchar(50)) [ZipCode],
	cast([Telephone] as varchar(128)) [Telephone],
	cast([Email] as nvarchar(320)) [Email],
	cast([CustomerIP] as nvarchar(255)) [CustomerIp],
	cast([LineItemDescription] as nvarchar(4000)) [LineItemDescription],
	cast([DiscountAmount] as money) [DiscountAmount],
	cast([GatewayMessage] as nvarchar(4000)) [GatewayMessage] 
From stg.[CC_Payment_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Payment__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Payment__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Payment__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Payment__dbt_tmp_temp_view"
    end


