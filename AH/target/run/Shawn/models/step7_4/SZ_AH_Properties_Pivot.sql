
  
  if object_id ('"dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."SZ_AH_Properties_Pivot__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."SZ_AH_Properties_Pivot__dbt_tmp"
    end


   EXEC('create view dbo.SZ_AH_Properties_Pivot__dbt_tmp_temp_view as
    









    

    

 







    
    

 

WITH pivot_data_input AS
(
    SELECT 
        listingid, -- Grouping Column
        customfieldname, -- Spreading Column
        customfieldvalue -- Aggregate Column
    FROM [stg].[SZ_AH_AllProperties_One_Column] 
        -- [TEST] where listingid = 10023682
),
pivoted_data AS
(
    SELECT 
        listingid, [IsPromoVehicle], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [LeadSource], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [UI_ListingStateHold], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [OriginalEngineText], [HasProMarketing], [BeenListed], [Copy_Writer], [CarfaxPassFail], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [HideListing], [Specialist_Section_Notes], [Era], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [ListingNotes], [IsPaid], [AddressLine2], [PremiumListing], [DealerName], [Mileage], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [BuyItNow], [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [NoReserveCheck], [MagicBoxSection4], [CCID], [OdometerUnits], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [WGL_Public_Report], [MakeOfferAvailable], [Utm_Medium_Listing_Submission], [ListingProgress], [IsEdited], [TransmissionText], [EstimatedMarketValue], [StateProvinceRegion], [PaintWorkText], [ReservePriceCL], [VehicleStoryDescriptionExterior], [Decade], [Specialist_Section_Comp5_Price], [ReservePrice], [VehicleStoryDescriptionExteriorPictures], [HaveAllPhotos], [Address], [Specialist_Section_Comp3_Info], [IsTaxable], [IsApproved], [CounterReserve], [VehicleStoryDescriptionExterior2], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionEngineTransmission], [SnapprPackage], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [BuyItNowUsed], [Acct_Rep], [Taxonomy], [Copy_Writer_Feedback], [Comped], [WhereDidYouHearAboutUsListingOther], [HasMagicBox], [HasDealerFee], [Specialist_Section_Comp2_Price], [SchedulingComplete], [MagicBoxSection6], [ReserveReviewEmailDate], [MagicBoxSection5], [LastServiceInformation], [BeenListedText], [VIN], [Zip], [ServiceRecords], [MagicBoxSection3], [Acct_Rep_Email], [MarketValue], [VehicleStory], [VehicleColor], [SpinCarLink], [MagicBoxSection2], [UserComments], [PackageTransactionId], [Transmission], [Specialist_Section_Comp4_Info], [Copy_Writer_Status], [Commission], [MagicBoxSection1], [StartingBid], [MakeOfferAllowed], [FixedPrice], [HasProPhotography], [Model], [EngineSize], [OriginalEngine], [IsFeaturedVehicle], [Utm_Source_Listing_Submission], [Year], [PhotoPlanId], [DealerURL], [ExpertVideoReview], [HowLongOwned], [Specialist_Section_Comp4_Price], [AnythingElseWeShouldKnow], [Photo_Plan], [BeenModified], [CurrentIssues], [VehicleStoryDescriptionCarFaxPictures], [Specialist], [Utm_Campaign_Listing_Submission], [CountryOfOrigin], [Specialist_Section_Original_Reserve], [VehicleTitle], [PaintWork], [Make], [CityCL], [WhereDidYouHearAboutUsListing], [TransactionId], [MileageAccurate], [CommissionOverrideReason], [Acct_Rep_Name], [VehicleStoryDescriptionExterior2Pictures], [DealerFees], [Dealer], [CarTitleInYourName], [CountryCL], [WhereDidYouHearAboutUsListingReferral], [VehicleStoryOpeningStatement], [MaxReserve], [Specialist_Section_Comp3_Price], [Specialist_Section_Comp1_Price]
    FROM pivot_data_input
    PIVOT (
        max(customfieldvalue) for customfieldname in ( [IsPromoVehicle], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [LeadSource], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [UI_ListingStateHold], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [OriginalEngineText], [HasProMarketing], [BeenListed], [Copy_Writer], [CarfaxPassFail], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [HideListing], [Specialist_Section_Notes], [Era], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [ListingNotes], [IsPaid], [AddressLine2], [PremiumListing], [DealerName], [Mileage], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [BuyItNow], [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [NoReserveCheck], [MagicBoxSection4], [CCID], [OdometerUnits], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [WGL_Public_Report], [MakeOfferAvailable], [Utm_Medium_Listing_Submission], [ListingProgress], [IsEdited], [TransmissionText], [EstimatedMarketValue], [StateProvinceRegion], [PaintWorkText], [ReservePriceCL], [VehicleStoryDescriptionExterior], [Decade], [Specialist_Section_Comp5_Price], [ReservePrice], [VehicleStoryDescriptionExteriorPictures], [HaveAllPhotos], [Address], [Specialist_Section_Comp3_Info], [IsTaxable], [IsApproved], [CounterReserve], [VehicleStoryDescriptionExterior2], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionEngineTransmission], [SnapprPackage], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [BuyItNowUsed], [Acct_Rep], [Taxonomy], [Copy_Writer_Feedback], [Comped], [WhereDidYouHearAboutUsListingOther], [HasMagicBox], [HasDealerFee], [Specialist_Section_Comp2_Price], [SchedulingComplete], [MagicBoxSection6], [ReserveReviewEmailDate], [MagicBoxSection5], [LastServiceInformation], [BeenListedText], [VIN], [Zip], [ServiceRecords], [MagicBoxSection3], [Acct_Rep_Email], [MarketValue], [VehicleStory], [VehicleColor], [SpinCarLink], [MagicBoxSection2], [UserComments], [PackageTransactionId], [Transmission], [Specialist_Section_Comp4_Info], [Copy_Writer_Status], [Commission], [MagicBoxSection1], [StartingBid], [MakeOfferAllowed], [FixedPrice], [HasProPhotography], [Model], [EngineSize], [OriginalEngine], [IsFeaturedVehicle], [Utm_Source_Listing_Submission], [Year], [PhotoPlanId], [DealerURL], [ExpertVideoReview], [HowLongOwned], [Specialist_Section_Comp4_Price], [AnythingElseWeShouldKnow], [Photo_Plan], [BeenModified], [CurrentIssues], [VehicleStoryDescriptionCarFaxPictures], [Specialist], [Utm_Campaign_Listing_Submission], [CountryOfOrigin], [Specialist_Section_Original_Reserve], [VehicleTitle], [PaintWork], [Make], [CityCL], [WhereDidYouHearAboutUsListing], [TransactionId], [MileageAccurate], [CommissionOverrideReason], [Acct_Rep_Name], [VehicleStoryDescriptionExterior2Pictures], [DealerFees], [Dealer], [CarTitleInYourName], [CountryCL], [WhereDidYouHearAboutUsListingReferral], [VehicleStoryOpeningStatement], [MaxReserve], [Specialist_Section_Comp3_Price], [Specialist_Section_Comp1_Price])
    )as pvt
)


select 
    listingid, [IsPromoVehicle], [Specialist_Section_Comp2_Info], [CarfaxPassFailError], [LeadSource], [MakeWholeAmount], [Photo_Plan_Status], [VehicleStoryDescriptionInterior], [UI_ListingStateHold], [VehicleStoryDescriptionCarFax], [Acct_Rep_Phone], [OriginalEngineText], [HasProMarketing], [BeenListed], [Copy_Writer], [CarfaxPassFail], [Specialist_Section_Comp1_Info], [CaliforniaSmogCheck], [Modifications], [ListingState], [HideListing], [Specialist_Section_Notes], [Era], [VehicleStoryDescriptionUndercarriage], [CarfaxLink], [ListingNotes], [IsPaid], [AddressLine2], [PremiumListing], [DealerName], [Mileage], [VehicleStoryDescriptionInterior2], [VehicleStoryDescriptionInteriorPictures], [Rust], [VehicleStoryDescriptionEngineTransmissionPictures], [BuyItNow], [LockUsername], [Curated], [VehicleStoryOpeningStatementPictures], [NoReserveCheck], [MagicBoxSection4], [CCID], [OdometerUnits], [VehicleStoryDescriptionInterior2Pictures], [VehicleStoryDescriptionUndercarriagePictures], [WGL_Public_Report], [MakeOfferAvailable], [Utm_Medium_Listing_Submission], [ListingProgress], [IsEdited], [TransmissionText], [EstimatedMarketValue], [StateProvinceRegion], [PaintWorkText], [ReservePriceCL], [VehicleStoryDescriptionExterior], [Decade], [Specialist_Section_Comp5_Price], [ReservePrice], [VehicleStoryDescriptionExteriorPictures], [HaveAllPhotos], [Address], [Specialist_Section_Comp3_Info], [IsTaxable], [IsApproved], [CounterReserve], [VehicleStoryDescriptionExterior2], [TargetReserve], [PersonalMileage], [VehicleStoryDescriptionEngineTransmission], [SnapprPackage], [DraftEmailNotificationSent], [Specialist_Section_Comp5_Info], [BuyItNowUsed], [Acct_Rep], [Taxonomy], [Copy_Writer_Feedback], [Comped], [WhereDidYouHearAboutUsListingOther], [HasMagicBox], [HasDealerFee], [Specialist_Section_Comp2_Price], [SchedulingComplete], [MagicBoxSection6], [ReserveReviewEmailDate], [MagicBoxSection5], [LastServiceInformation], [BeenListedText], [VIN], [Zip], [ServiceRecords], [MagicBoxSection3], [Acct_Rep_Email], [MarketValue], [VehicleStory], [VehicleColor], [SpinCarLink], [MagicBoxSection2], [UserComments], [PackageTransactionId], [Transmission], [Specialist_Section_Comp4_Info], [Copy_Writer_Status], [Commission], [MagicBoxSection1], [StartingBid], [MakeOfferAllowed], [FixedPrice], [HasProPhotography], [Model], [EngineSize], [OriginalEngine], [IsFeaturedVehicle], [Utm_Source_Listing_Submission], [Year], [PhotoPlanId], [DealerURL], [ExpertVideoReview], [HowLongOwned], [Specialist_Section_Comp4_Price], [AnythingElseWeShouldKnow], [Photo_Plan], [BeenModified], [CurrentIssues], [VehicleStoryDescriptionCarFaxPictures], [Specialist], [Utm_Campaign_Listing_Submission], [CountryOfOrigin], [Specialist_Section_Original_Reserve], [VehicleTitle], [PaintWork], [Make], [CityCL], [WhereDidYouHearAboutUsListing], [TransactionId], [MileageAccurate], [CommissionOverrideReason], [Acct_Rep_Name], [VehicleStoryDescriptionExterior2Pictures], [DealerFees], [Dealer], [CarTitleInYourName], [CountryCL], [WhereDidYouHearAboutUsListingReferral], [VehicleStoryOpeningStatement], [MaxReserve], [Specialist_Section_Comp3_Price], [Specialist_Section_Comp1_Price]
from pivoted_data
    ');

  CREATE TABLE "dbo"."SZ_AH_Properties_Pivot__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.SZ_AH_Properties_Pivot__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."SZ_AH_Properties_Pivot__dbt_tmp_temp_view"
    end


