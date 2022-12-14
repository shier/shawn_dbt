

SELECT
    [AuctionBidderID],
    [AuctionID],
    [BidderID],
    [ShippingAddressID],
    [AuctionBidderNumber],
    [RegistrationDate],
    NULLIF([Comments], '') as [Comments],
    [Created],
    [UpdateEventID],
    [BankAccountID],
    [Insurance],
    [DriverLicense],
    [DealerLicense],
    [TaxCertificate],
    [AuthBidLetter],
    [OwnershipLetter],
    [OtherLetter],
    [RockDoc],
    [InsuranceExpire] as [InsuranceExpireDate],
    [InsuranceID],
    [MethodOfPayment] as [PaymentMethod],
    [RegistrationFee],
    [SignedAgreement],
    [PacketAtWillCall] as [PackageAtWillCall],
    [CreatedByUserID],
    [SkyBoxPassCount],
    [BidLimit],
    [BidderStatusID],
    [CompleteStatusBIT],
    [BidderRequestID],
    [ContactPhoneID],
    [PaymentMethodID],
    [AddressID],
    [BidLimitEstimate],
    [TrackingNumber],
    [DocumentationBIT],
    [HoldPackageAtWillCall],
    [AuctionBidderSourceID],
    [RegisteredOnlineBIT],
    [ChargeCount]
    -- [AuctionBidderPackageStatusID],
    -- [PacketPickupDateTime] as [PackagePickupDateTime] -- not exist for those two columns on parquet file, mark 2022-08-31 by shawn
FROM [stg].[Auct_AuctionBidder_FinalView]