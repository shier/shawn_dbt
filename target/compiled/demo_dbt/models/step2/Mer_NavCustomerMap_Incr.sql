
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Location], [Customer_No], [Merchant_ID], [Name], [Customer_Type], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No], Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavCustomerMap_Inter]
	)
Select * From hashData
