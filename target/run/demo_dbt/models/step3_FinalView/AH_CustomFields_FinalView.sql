create view "stg"."AH_CustomFields_FinalView__dbt_tmp" as
    
Select
	[ID],[Required],[Deferred],[Encrypted],[IncludeonInvoice],[IncludeinSalesReport],[IncludeonInvoiceasSeller],[IncludeonInvoiceasBuyer],[IncludeinSalesReportasSeller],[IncludeinSalesReportasBuyer],[Type],[DisplayOrder],[VisiBIlity],[MutaBIlity],[CreatedOn],[UpdatedOn],[DeletedOn],[Name],[DefaultValue],[GroupName],[LastUpdatedUser] 
From stg.[AH_CustomFields_Incr] 
Where [dbt_valid_to] is null