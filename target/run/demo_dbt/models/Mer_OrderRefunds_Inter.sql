
  
  if object_id ('"stg"."Mer_OrderRefunds_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_OrderRefunds_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_OrderRefunds_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_OrderRefunds_Inter__dbt_tmp_temp_view as
    
Select
	cast(SHIP_TO_STATE as nvarchar(4000)) Ship_To_State,
	cast(CUSTOMER_NO as nvarchar(4000)) Customer_No,
	cast(DOCUMENT_NO as nvarchar(4000)) Document_No,
	cast(SHIP_GL_NO as nvarchar(4000)) Ship_Gl_No,
	cast(TAX_STATE as nvarchar(4000)) Tax_State,
	cast(TAX_GL_NO as nvarchar(4000)) Tax_Gl_No,
	cast(SKU as nvarchar(4000)) Sku,
	cast(DISCOUNT_TYPE as nvarchar(4000)) DisCount_Type,
	cast(EMPLOYEE as nvarchar(4000)) Employee,
	cast(TERMINAL as nvarchar(4000)) Terminal,
	cast(PAYMENT_METHOD as nvarchar(4000)) Payment_Method,
	cast(BILL_TO_STATE as nvarchar(4000)) Bill_To_State,
	cast(ORDER_ID as nvarchar(4000)) Order_ID,
	cast(ORDER_LINE_ID as nvarchar(4000)) Order_Line_ID,
	cast(MERCHANT_ID as nvarchar(4000)) Merchant_ID,
	cast(REFUND_ID as nvarchar(4000)) Refund_ID,
	cast(MERCHANT as nvarchar(4000)) Merchant,
	cast(CUSTOMER as nvarchar(4000)) Customer,
	IS_REVENUE Is_Revenue,
	cast(DISCOUNT_GL_NO as nvarchar(4000)) DisCount_Gl_No,
	PRICE Price,
	DISCOUNT DisCount,
	TAX_AMOUNT Tax_Amount,
	SHIPPING_AMOUNT Shipping_Amount,
	ORDER_DATE Order_Date,
	SHIP_DATE Ship_Date,
	REFUND_DATE Refund_Date,
	QTY Qty,
	DISCOUNT_PERCENT DisCount_Percent
From Mer_OrderRefunds_Raw
    ');

  CREATE TABLE "stg"."Mer_OrderRefunds_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_OrderRefunds_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_OrderRefunds_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Inter__dbt_tmp_temp_view"
    end


