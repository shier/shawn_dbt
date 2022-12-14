{{ config(materialized='view',schema='stg')}}
Select
	[EntryNo] as [EntryNo_] ,
	[PostingDate] ,
	[DueDate] ,
	[Pmt_DiscountDate] ,
	[ClosedatDate] ,
	[DocumentDate] ,
	[Pmt_Disc_ToleranceDate] ,
	[DocumentType] ,
	[Applies_toDoc_Type] as [Applies-toDoc_Type] ,
	[Open_S] as [Open] ,
	[Positive] ,
	[ClosedbyEntryNo] as [ClosedbyEntryNo_] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[ApplyingEntry] ,
	[Reversed] ,
	[ReversedbyEntryNo] as [ReversedbyEntryNo_] ,
	[ReversedEntryNo] as [ReversedEntryNo_] ,
	[Prepayment] ,
	[ExportedtoPaymentFile] ,
	[Bal_AccountType] ,
	[TransactionNo] as [TransactionNo_] ,
	[CalculateInterest] ,
	[ClosingInterestCalculated] ,
	[LastIssuedReminderLevel] ,
	[AcceptedPmt_Disc_Tolerance] ,
	[SalesLCY] ,
	[ProfitLCY] ,
	[Inv_DiscountLCY] ,
	[OriginalPmt_Disc_Possible] ,
	[Pmt_Disc_GivenLCY] ,
	[ClosedbyAmount] ,
	[DimensionSetID] ,
	[ElectronicDocumentSent] ,
	[No_ofE_DocumentsSent] as [No_ofE-DocumentsSent] ,
	[ElectronicDocumentStatus] ,
	[AcceptedPaymentTolerance] ,
	[Pmt_ToleranceLCY] ,
	[AmounttoApply] ,
	[ClosedbyAmountLCY] ,
	[ClosedbyCurrencyAmount] ,
	[AdjustedCurrencyFactor] ,
	[OriginalCurrencyFactor] ,
	[RemainingPmt_Disc_Possible] ,
	[Max_PaymentTolerance] ,
	[timestamp] ,
	[OriginalDocumentXML] ,
	[OriginalString] ,
	[DigitalStampSAT] ,
	[SignedDocumentXML] ,
	[DigitalStampPAC] ,
	[CustomerNo] as [CustomerNo_] ,
	[DocumentNo] as [DocumentNo_] ,
	[Description] ,
	[CurrencyCode] ,
	[Sell_toCustomerNo] as [Sell-toCustomerNo_] ,
	[CustomerPostingGroup] ,
	[QRCode] ,
	[Date_TimeFirstReq_Sent] ,
	[CustomerName] ,
	[systemId] as [$systemId] ,
	[PaymentReference] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] ,
	[Date_TimeSent] ,
	[Date_TimeCanceled] ,
	[ErrorCode] ,
	[ErrorDescription] ,
	[PACWebServiceName] ,
	[FiscalInvoiceNumberPAC] ,
	[MessagetoRecipient] ,
	[DirectDebitMandateID] ,
	[TaxExemptionNo] as [TaxExemptionNo_] ,
	[STETransactionID] ,
	[CertificateSerialNo] as [CertificateSerialNo_] ,
	[Date_TimeStamped] ,
	[No_Series] ,
	[ClosedbyCurrencyCode] ,
	[ICPartnerCode] ,
	[PaymentMethodCode] ,
	[Applies_toExt_Doc_No] as [Applies-toExt_Doc_No_] ,
	[RecipientBankAccount] ,
	[Applies_toDoc_No] as [Applies-toDoc_No_] ,
	[Applies_toID] as [Applies-toID] ,
	[JournalBatchName] ,
	[ReasonCode] ,
	[Bal_AccountNo] as [Bal_AccountNo_] ,
	[ExternalDocumentNo] as [ExternalDocumentNo_] ,
	[GlobalDimension1Code] ,
	[GlobalDimension2Code] ,
	[SalespersonCode] ,
	[UserID] ,
	[SourceCode] ,
	[OnHold] 
From stg.[BC_BJAuctionCompany_CustLedgerEntry_0972_Incr] 
Where [dbt_valid_to] is null