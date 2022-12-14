{{ config(materialized='table',schema='dbo')}}
Select
	cast([HoldPackageatWillCall] as bit) [HOLDPACKAGEATWILLCALL],
	cast([AuctionBidderID] as int) [AUCTIONBIDDERID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([BidderID] as int) [BIDDERID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([RegistrationDate] as datetime) [REGISTRATIONDATE],
	cast([Comments] as varchar(512)) [COMMENTS],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BankAccountID] as int) [BANKACCOUNTID],
	cast([Insurance] as char(1)) [INSURANCE],
	cast([DriverLicense] as char(1)) [DRIVERLICENSE],
	cast([DealerLicense] as char(1)) [DEALERLICENSE],
	cast([TaxCertificate] as char(1)) [TAXCERTIFICATE],
	cast([AuthBidLetter] as char(1)) [AUTHBIDLETTER],
	cast([OwnershipLetter] as char(1)) [OWNERSHIPLETTER],
	cast([OtherLetter] as char(1)) [OTHERLETTER],
	cast([RockDoc] as char(1)) [ROCKDOC],
	cast([InsuranceExpire] as datetime) [INSURANCEEXPIRE],
	cast([InsuranceID] as int) [INSURANCEID],
	cast([MethODOfPayment] as char(1)) [METHODOFPAYMENT],
	cast([RegistrationFee] as char(1)) [REGISTRATIONFEE],
	cast([SignedAgreement] as char(1)) [SIGNEDAGREEMENT],
	cast([PacketatWillCall] as char(1)) [PACKETATWILLCALL],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([SkyBoxPassCount] as int) [SKYBOXPASSCOUNT],
	cast([BidLimit] as int) [BIDLIMIT],
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([CompleteStatusBit] as int) [COMPLETESTATUSBIT],
	cast([BidderRequestID] as uniqueidentifier) [BIDDERREQUESTID],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([ContactPhoneID] as int) [CONTACTPHONEID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([AddressID] as int) [ADDRESSID],
	cast([BidLimiTestimate] as int) [BIDLIMITESTIMATE],
	cast([TrackingNumber] as nvarchar(128)) [TRACKINGNUMBER],
	cast([DocumentationBit] as int) [DOCUMENTATIONBIT],
	cast([AuctionBidderSourceID] as int) [AUCTIONBIDDERSOURCEID],
	cast([RegisteredOnlineBit] as int) [REGISTEREDONLINEBIT],
	cast([ChargeCount] as int) [CHARGECOUNT] 
From stg.[Auct_AuctionBidder_FinalView]