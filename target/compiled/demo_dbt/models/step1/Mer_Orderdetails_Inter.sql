
Select
	[QTY] [Qty],
	[DISCOUNT_PERCENT] [Discount_Percent],
	[ORDER_DATE] [Order_Date],
	[SHIP_DATE] [Ship_Date],
	[PRICE] [Price],
	[DISCOUNT] [Discount],
	[TAX_AMOUNT] [Tax_Amount],
	[SHIPPING_AMOUNT] [Shipping_Amount],
	cast([ORDER_ID] as nvarchar(4000)) [Order_ID],
	[IS_REVENUE] [Is_Revenue],
	cast([SHIP_TO_STATE] as nvarchar(4000)) [Ship_To_State],
	cast([SHIP_GL_NO] as nvarchar(4000)) [Ship_Gl_No],
	cast([TAX_STATE] as nvarchar(4000)) [Tax_State],
	cast([TAX_GL_NO] as nvarchar(4000)) [Tax_Gl_No],
	cast([DISCOUNT_GL_NO] as nvarchar(4000)) [Discount_Gl_No],
	cast([EMPLOYEE] as nvarchar(4000)) [Employee],
	cast([TERMINAL] as nvarchar(4000)) [Terminal],
	cast([PAYMENT_METHOD] as nvarchar(4000)) [Payment_Method],
	cast([DOCUMENT_NO] as nvarchar(4000)) [Document_No],
	cast([CUSTOMER_NO] as nvarchar(4000)) [Customer_No],
	cast([BILL_TO_STATE] as nvarchar(4000)) [Bill_To_State],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([MERCHANT] as nvarchar(4000)) [Merchant],
	cast([CUSTOMER] as nvarchar(4000)) [Customer],
	cast([ORDER_LINE_ID] as nvarchar(4000)) [Order_Line_ID],
	cast([SKU] as nvarchar(4000)) [SKU],
	cast([DISCOUNT_TYPE] as nvarchar(4000)) [Discount_Type]
From stg.[Mer_Orderdetails_Raw]