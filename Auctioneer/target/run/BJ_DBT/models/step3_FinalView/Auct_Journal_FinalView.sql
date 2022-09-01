create view "stg"."Auct_Journal_FinalView__dbt_tmp" as
    
Select
	[JournalID],[AuctionID],[ProjectID],[Ln],[AccountID],[CustomerAccountID],[TimeCreated],[JournalType],[DepositID],[CarConsignmentID],[InvoiceID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[VendorSpaceID],[InventoryID],[ContactName],[Address],[City],[StateProvince],[PostalCode],[Country],[Phoneac],[Phone],[Description],[PaymentMethod],[CheckNumber],[CreditCardNumber],[CreditCardExp],[Comments],[DateCreated],[CreatedBy],[DateModified],[ModifiedBy],[ServerCreatedBy],[ServerModifiedBy],[Status],[Credit],[Debit],[Rn] 
From stg.[Auct_Journal_Incr] 
Where [dbt_valid_to] is null