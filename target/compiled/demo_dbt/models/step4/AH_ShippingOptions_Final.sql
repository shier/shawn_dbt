
Select
	[ID],[ShippingMethodID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[FirstItEMAmount],[AdditionalItEMAmount] 
From stg.[AH_ShippingOptions_Incr] 
Where [dbt_valid_to] is null