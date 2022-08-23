
  
  if object_id ('"dbo"."Mer_Orderdetails_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Orderdetails_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_Orderdetails_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_Orderdetails_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_Orderdetails_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Qty] as int) [QTY],
	cast([Discount_Percent] as int) [DiscountPct],
	cast([Order_Date] as datetime) [OrderDate],
	cast([Ship_Date] as datetime) [ShipDate],
	cast([Price] as money) [Price],
	cast([Discount] as money) [DiscountPrice],
	cast([Tax_Amount] as money) [TaxAmountDollars],
	cast([Shipping_Amount] as money) [ShippingAmountDollars],
	cast([Order_ID] as varchar(100)) [OrderID],
	cast([Is_Revenue] as bit) [IsRevenue],
	cast([Ship_To_State] as varchar(50)) [ShippingState],
	cast([Ship_Gl_No] as varchar(300)) [ShippingGLNumber],
	cast([Tax_State] as varchar(50)) [TaxState],
	cast([Tax_Gl_No] as varchar(300)) [TaxGLNumber],
	cast([Discount_Gl_No] as varchar(300)) [DiscountGLNumber],
	cast([Employee] as varchar(500)) [Employee_NameOrID],
	cast([Terminal] as varchar(300)) [Terminal],
	cast([Payment_Method] as varchar(80)) [PaymentMethod],
	cast([Document_No] as varchar(300)) [DocumentNumber],
	cast([Customer_No] as varchar(300)) [CustomerNumber],
	cast([Bill_To_State] as varchar(50)) [BillState],
	cast([Merchant_ID] as varchar(100)) [MerchantID],
	cast([Merchant] as varchar(300)) [MerchantType],
	cast([Customer] as nvarchar(320)) [CustomerEmail],
	cast([Order_Line_ID] as varchar(100)) [OrderLineID],
	cast([SKU] as varchar(64)) [SKU],
	cast([Discount_Type] as varchar(300)) [DiscountType] 
From stg.[Mer_Orderdetails_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_Orderdetails_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_Orderdetails_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_Orderdetails_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_Orderdetails_FromStg__dbt_tmp_temp_view"
    end


