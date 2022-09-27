
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr" (
                  "No", "ShippingAgentServiceCode", "DraftCr_MemoSystemId", "systemCreatedBy", "systemModifiedBy", "Sell_toE_Mail", "CFDIPurpose", "CFDIRelation", "systemId", "ShippingAgentCode", "PackageTrackingNo", "ErrorCode", "ErrorDescription", "PACWebServiceName", "FiscalInvoiceNumberPAC", "Date_TimeFirstReq_Sent", "Sell_toPhoneNo", "TaxExemptionNo", "STETransactionID", "CertificateSerialNo", "Date_TimeStamped", "Date_TimeSent", "Date_TimeCanceled", "OpportunityNo", "ResponsibilityCenter", "ReturnOrderNo", "ReturnOrderNo_Series", "Id", "Ship_toUPSZone", "PrepaymentOrderNo", "DocumentExchangeIdentifier", "Doc_Exch_OriginalIdentifier", "CampaignNo", "Sell_toContactNo", "Bill_toContactNo", "Pre_AssignedNo", "UserID", "SourceCode", "TaxAreaCode", "VATBus_PostingGroup", "Prepmt_Cr_MemoNo_Series", "ExternalDocumentNo", "Area", "TransactionSpecification", "PaymentMethodCode", "Pre_AssignedNo_Series", "No_Series", "Sell_toCounty", "Sell_toCountry_RegionCode", "Ship_toPostCode", "Ship_toCounty", "Ship_toCountry_RegionCode", "ExitPoint", "Sell_toCity", "Sell_toContact", "Bill_toPostCode", "Bill_toCounty", "Bill_toCountry_RegionCode", "Sell_toPostCode", "TransportMethod", "VATCountry_RegionCode", "Sell_toCustomerName", "Sell_toCustomerName2", "Sell_toAddress", "Sell_toAddress2", "Applies_toDoc_No", "Bal_AccountNo", "VATRegistrationNo", "ReasonCode", "Gen_Bus_PostingGroup", "TransactionType", "CustomerPriceGroup", "InvoiceDisc_Code", "CustomerDisc_Group", "LanguageCode", "SalespersonCode", "OnHold", "ShipmentMethodCode", "LocationCode", "ShortcutDimension1Code", "ShortcutDimension2Code", "CustomerPostingGroup", "CurrencyCode", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "PostingDescription", "PaymentTermsCode", "Bill_toCity", "Bill_toContact", "YourReference", "Ship_toCode", "Ship_toName", "Ship_toName2", "Sell_toCustomerNo", "Bill_toCustomerNo", "Bill_toName", "Bill_toName2", "Bill_toAddress", "Bill_toAddress2", "PostingDate", "ShipmentDate", "DueDate", "Pmt_DiscountDate", "DocumentDate", "systemCreatedAt", "systemModifiedAt", "PricesIncludingVAT", "No_Printed", "DimensionSetID", "DocumentExchangeStatus", "Cust_LedgerEntryNo", "AllowLineDisc", "GetReturnReceiptUsed", "ElectronicDocumentSent", "Applies_toDoc_Type", "EU3_PartyTrade", "Bal_AccountType", "Correction", "TaxLiable", "PrepaymentCreditMemo", "No_ofE_DocumentsSent", "ElectronicDocumentStatus", "PriceCalculationMethod", "PaymentDiscount", "CurrencyFactor", "VATBaseDiscount", "timestamp", "OriginalDocumentXML", "OriginalString", "DigitalStampSAT", "SignedDocumentXML", "DigitalStampPAC", "QRCode", "WorkDescription", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "ShippingAgentServiceCode", "DraftCr_MemoSystemId", "systemCreatedBy", "systemModifiedBy", "Sell_toE_Mail", "CFDIPurpose", "CFDIRelation", "systemId", "ShippingAgentCode", "PackageTrackingNo", "ErrorCode", "ErrorDescription", "PACWebServiceName", "FiscalInvoiceNumberPAC", "Date_TimeFirstReq_Sent", "Sell_toPhoneNo", "TaxExemptionNo", "STETransactionID", "CertificateSerialNo", "Date_TimeStamped", "Date_TimeSent", "Date_TimeCanceled", "OpportunityNo", "ResponsibilityCenter", "ReturnOrderNo", "ReturnOrderNo_Series", "Id", "Ship_toUPSZone", "PrepaymentOrderNo", "DocumentExchangeIdentifier", "Doc_Exch_OriginalIdentifier", "CampaignNo", "Sell_toContactNo", "Bill_toContactNo", "Pre_AssignedNo", "UserID", "SourceCode", "TaxAreaCode", "VATBus_PostingGroup", "Prepmt_Cr_MemoNo_Series", "ExternalDocumentNo", "Area", "TransactionSpecification", "PaymentMethodCode", "Pre_AssignedNo_Series", "No_Series", "Sell_toCounty", "Sell_toCountry_RegionCode", "Ship_toPostCode", "Ship_toCounty", "Ship_toCountry_RegionCode", "ExitPoint", "Sell_toCity", "Sell_toContact", "Bill_toPostCode", "Bill_toCounty", "Bill_toCountry_RegionCode", "Sell_toPostCode", "TransportMethod", "VATCountry_RegionCode", "Sell_toCustomerName", "Sell_toCustomerName2", "Sell_toAddress", "Sell_toAddress2", "Applies_toDoc_No", "Bal_AccountNo", "VATRegistrationNo", "ReasonCode", "Gen_Bus_PostingGroup", "TransactionType", "CustomerPriceGroup", "InvoiceDisc_Code", "CustomerDisc_Group", "LanguageCode", "SalespersonCode", "OnHold", "ShipmentMethodCode", "LocationCode", "ShortcutDimension1Code", "ShortcutDimension2Code", "CustomerPostingGroup", "CurrencyCode", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "PostingDescription", "PaymentTermsCode", "Bill_toCity", "Bill_toContact", "YourReference", "Ship_toCode", "Ship_toName", "Ship_toName2", "Sell_toCustomerNo", "Bill_toCustomerNo", "Bill_toName", "Bill_toName2", "Bill_toAddress", "Bill_toAddress2", "PostingDate", "ShipmentDate", "DueDate", "Pmt_DiscountDate", "DocumentDate", "systemCreatedAt", "systemModifiedAt", "PricesIncludingVAT", "No_Printed", "DimensionSetID", "DocumentExchangeStatus", "Cust_LedgerEntryNo", "AllowLineDisc", "GetReturnReceiptUsed", "ElectronicDocumentSent", "Applies_toDoc_Type", "EU3_PartyTrade", "Bal_AccountType", "Correction", "TaxLiable", "PrepaymentCreditMemo", "No_ofE_DocumentsSent", "ElectronicDocumentStatus", "PriceCalculationMethod", "PaymentDiscount", "CurrencyFactor", "VATBaseDiscount", "timestamp", "OriginalDocumentXML", "OriginalString", "DigitalStampSAT", "SignedDocumentXML", "DigitalStampPAC", "QRCode", "WorkDescription", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  