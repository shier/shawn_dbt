{{ config(materialized='view',schema='stg')}}
Select
	[EntryNo_] as [EntryNo],
	[PostingDate] ,
	[InitialEntryDueDate] ,
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	[InitialDocumentType] ,
	[AppliedCust_LedgerEntryNo_] as [AppliedCust_LedgerEntryNo],
	[Unapplied] ,
	[UnappliedbyEntryNo_] as [UnappliedbyEntryNo],
	[ApplicationNo_] as [ApplicationNo],
	[LedgerEntryAmount] ,
	[Cust_LedgerEntryNo_] as [Cust_LedgerEntryNo],
	[EntryType] ,
	[DocumentType] ,
	[TransactionNo_] as [TransactionNo],
	[UseTax] ,
	[Amount] ,
	[AmountLCY] ,
	[DebitAmount] ,
	[CreditAmount] ,
	[DebitAmountLCY] ,
	[CreditAmountLCY] ,
	[RemainingPmt_Disc_Possible] ,
	[Max_PaymentTolerance] ,
	cast([timestamp] as nvarchar(4000)) [timestamp],
	cast([DocumentNo_] as nvarchar(4000)) [DocumentNo],
	cast([TaxJurisdictionCode] as nvarchar(4000)) [TaxJurisdictionCode],
	cast([$systemId] as nvarchar(4000)) [systemId],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy],
	cast([InitialEntryGlobalDim_1] as nvarchar(4000)) [InitialEntryGlobalDim_1],
	cast([InitialEntryGlobalDim_2] as nvarchar(4000)) [InitialEntryGlobalDim_2],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([CustomerNo_] as nvarchar(4000)) [CustomerNo],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([JournalBatchName] as nvarchar(4000)) [JournalBatchName],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode]
From stg.[BC_BJAuctionCompany_DetailedCustLedgEntry_0972_Raw]