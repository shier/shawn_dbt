create view "stg"."Auct_Consignment_FinalView__dbt_tmp" as
    
Select
	[ConsignmentID],[CustomerAccountID],[ItemID],[ConsignmentStatusID],[AuctionID],[ReserveTypeID],[ShortDescription],[LongDescription],[PhotosReceived],[Showcase],[Created],[UpdateEventID],[CarCard],[Titlein],[OnSite],[CheckedIn],[Completed],[Canceled],[AddressID],[CarInfoID],[OnSpeed],[OnHagerty],[IsCharity],[CreatedUTC],[ModifiedUTC],[EmainventoryID],[EMAEventID],[EMACCEventID],[EmashowEventID],[EmamercEventID],[EmalotID],[MarketingDescription],[AuthorizedWeb],[AuthorizedSocial],[AuthorizedMarketing],[AuthorizedCarList],[LockMarketingDescription],[ReviewStateID],[DisplayStatusID],[AssignedtoUserID],[Priority],[Quality],[RequestedAuctionID],[StockNumber],[CreatedByUserID],[ModifiedByUserID],[ModifiedDateTime],[ModifiedFields],[ConsignmentCompleteStatusBit],[ModifiedDetailsUTC],[ModifiedDocketUTC],[PaymentStatusBit],[OnlineauctonItemID],[OnlineAuctionauctionItemID],[ConsignmentNotifyBit],[ReserveAmount],[CusTestimatedValue],[BJValue],[LotNumber],[IsOutTakeVehicle],[PaymentStatus],[ReleasedForTransPort] 
From stg.[Auct_Consignment_Incr] 
Where [dbt_valid_to] is null
