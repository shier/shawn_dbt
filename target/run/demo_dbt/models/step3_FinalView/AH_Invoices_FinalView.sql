create view "stg"."AH_Invoices_FinalView__dbt_tmp" as
    
Select
	[ID],[Paiddttm],[CreatedOn],[UpdatedOn],[DeletedOn],[Createddttm],[Fulfilleddttm],[PropertybagID],[ShippingOptionID],[PayerID],[OwnerID],[AuctionEventID],[SalesTax],[BuyersPremiumPercent],[BuyersPremiumAmount],[ShippingAmount],[SubTotal],[Total],[IsPayerLocked],[Shipped],[IsArchived],[Status],[ShippingLastName],[BillingLastName],[OwnerName],[Shippingdetails],[OwnerCity],[OwnerStateregion],[OwnerzipPostal],[OwnerCountry],[ShippingFirstName],[BillingFirstName],[BillingCity],[BillingStateregion],[BillingzipPostal],[BillingCountry],[OwnerStreet1],[OwnerStreet2],[ShippingCity],[ShippingStateregion],[ShippingzipPostal],[ShippingCountry],[BillingStreet1],[BillingStreet2],[Comments],[LastUpdatedUser],[Currency],[Type],[ShippingStreet1],[ShippingStreet2] 
From stg.[AH_Invoices_Incr] 
Where [dbt_valid_to] is null
