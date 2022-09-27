
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchInvHeader_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_PurchInvHeader_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchInvHeader_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchInvHeader_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchInvHeader_0972_Incr" (
                  "No", "PaymentDiscount", "CurrencyFactor", "VATBaseDiscount", "systemCreatedAt", "systemModifiedAt", "OrderDate", "PostingDate", "ExpectedReceiptDate", "DueDate", "Pmt_DiscountDate", "DocumentDate", "PricesIncludingVAT", "No_Printed", "Applies_toDoc_Type", "Bal_AccountType", "Correction", "TaxLiable", "PrepaymentInvoice", "DimensionSetID", "VendorLedgerEntryNo", "PriceCalculationMethod", "DIOT_TypeofOperation", "timestamp", "Id", "Ship_toUPSZone", "TaxExemptionNo", "ProvincialTaxAreaCode", "STETransactionID", "IRS1099Code", "CreditorNo", "PaymentReference", "CampaignNo", "Buy_fromContactNo", "Pay_toContactNo", "ResponsibilityCenter", "SourceCode", "TaxAreaCode", "VATBus_PostingGroup", "PrepaymentNo_Series", "PrepaymentOrderNo", "QuoteNo", "PaymentMethodCode", "Pre_AssignedNo_Series", "No_Series", "OrderNo_Series", "Pre_AssignedNo", "UserID", "Ship_toCounty", "Ship_toCountry_RegionCode", "OrderAddressCode", "EntryPoint", "Area", "TransactionSpecification", "Pay_toCounty", "Pay_toCountry_RegionCode", "Buy_fromPostCode", "Buy_fromCounty", "Buy_fromCountry_RegionCode", "Ship_toPostCode", "Buy_fromVendorName2", "Buy_fromAddress", "Buy_fromAddress2", "Buy_fromCity", "Buy_fromContact", "Pay_toPostCode", "ReasonCode", "Gen_Bus_PostingGroup", "TransactionType", "TransportMethod", "VATCountry_RegionCode", "Buy_fromVendorName", "Applies_toDoc_No", "Bal_AccountNo", "VendorOrderNo", "VendorInvoiceNo", "VATRegistrationNo", "Sell_toCustomerNo", "CurrencyCode", "InvoiceDisc_Code", "LanguageCode", "PurchaserCode", "OrderNo", "OnHold", "PaymentTermsCode", "ShipmentMethodCode", "LocationCode", "ShortcutDimension1Code", "ShortcutDimension2Code", "VendorPostingGroup", "Ship_toName2", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "PostingDescription", "Pay_toAddress2", "Pay_toCity", "Pay_toContact", "YourReference", "Ship_toCode", "Ship_toName", "Buy_fromVendorNo", "Pay_toVendorNo", "Pay_toName", "Pay_toName2", "Pay_toAddress", "FiscalInvoiceNumberPAC", "systemId", "DraftInvoiceSystemId", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "PaymentDiscount", "CurrencyFactor", "VATBaseDiscount", "systemCreatedAt", "systemModifiedAt", "OrderDate", "PostingDate", "ExpectedReceiptDate", "DueDate", "Pmt_DiscountDate", "DocumentDate", "PricesIncludingVAT", "No_Printed", "Applies_toDoc_Type", "Bal_AccountType", "Correction", "TaxLiable", "PrepaymentInvoice", "DimensionSetID", "VendorLedgerEntryNo", "PriceCalculationMethod", "DIOT_TypeofOperation", "timestamp", "Id", "Ship_toUPSZone", "TaxExemptionNo", "ProvincialTaxAreaCode", "STETransactionID", "IRS1099Code", "CreditorNo", "PaymentReference", "CampaignNo", "Buy_fromContactNo", "Pay_toContactNo", "ResponsibilityCenter", "SourceCode", "TaxAreaCode", "VATBus_PostingGroup", "PrepaymentNo_Series", "PrepaymentOrderNo", "QuoteNo", "PaymentMethodCode", "Pre_AssignedNo_Series", "No_Series", "OrderNo_Series", "Pre_AssignedNo", "UserID", "Ship_toCounty", "Ship_toCountry_RegionCode", "OrderAddressCode", "EntryPoint", "Area", "TransactionSpecification", "Pay_toCounty", "Pay_toCountry_RegionCode", "Buy_fromPostCode", "Buy_fromCounty", "Buy_fromCountry_RegionCode", "Ship_toPostCode", "Buy_fromVendorName2", "Buy_fromAddress", "Buy_fromAddress2", "Buy_fromCity", "Buy_fromContact", "Pay_toPostCode", "ReasonCode", "Gen_Bus_PostingGroup", "TransactionType", "TransportMethod", "VATCountry_RegionCode", "Buy_fromVendorName", "Applies_toDoc_No", "Bal_AccountNo", "VendorOrderNo", "VendorInvoiceNo", "VATRegistrationNo", "Sell_toCustomerNo", "CurrencyCode", "InvoiceDisc_Code", "LanguageCode", "PurchaserCode", "OrderNo", "OnHold", "PaymentTermsCode", "ShipmentMethodCode", "LocationCode", "ShortcutDimension1Code", "ShortcutDimension2Code", "VendorPostingGroup", "Ship_toName2", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "PostingDescription", "Pay_toAddress2", "Pay_toCity", "Pay_toContact", "YourReference", "Ship_toCode", "Ship_toName", "Buy_fromVendorNo", "Pay_toVendorNo", "Pay_toName", "Pay_toName2", "Pay_toAddress", "FiscalInvoiceNumberPAC", "systemId", "DraftInvoiceSystemId", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_PurchInvHeader_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  