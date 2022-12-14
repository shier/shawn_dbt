{{ config(materialized='view',schema='stg')}}
Select
	[AuctionBidderID],[HoldPackageatWillCall],[AuctionID],[BidderID],[AuctionBidderNumber],[RegistrationDate],[Comments],[Created],[UpdateEventID],[BankAccountID],[Insurance],[DriverLicense],[DealerLicense],[TaxCertificate],[AuthBidLetter],[OwnershipLetter],[OtherLetter],[RockDoc],[InsuranceExpire],[InsuranceID],[MethODOfPayment],[RegistrationFee],[SignedAgreement],[PacketatWillCall],[CreatedByUserID],[SkyBoxPassCount],[BidLimit],[BidderStatusID],[CompleteStatusBit],[BidderRequestID],[ShippingAddressID],[ContactPhoneID],[PaymentMethodID],[AddressID],[BidLimiTestimate],[TrackingNumber],[DocumentationBit],[AuctionBidderSourceID],[RegisteredOnlineBit],[ChargeCount] 
From stg.[Auct_AuctionBidder_Incr] 
Where [dbt_valid_to] is null