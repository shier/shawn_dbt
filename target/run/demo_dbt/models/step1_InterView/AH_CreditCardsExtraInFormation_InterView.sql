create view "stg"."AH_CreditCardsExtraInFormation_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([CVV] as nvarchar(4000)) [Cvv],
	[CreditCardId] [CreditCardID]
From stg.[AH_CreditCardsExtraInFormation_Raw]