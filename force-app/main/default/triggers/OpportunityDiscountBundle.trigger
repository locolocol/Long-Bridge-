trigger OpportunityDiscountBundle on Opportunity (before insert, before update) {
    for (Opportunity opp : Trigger.new) {
        // Check if the "Is_Bundle_Insurance__c" checkbox is checked
        if (opp.Is_Bundle_Insurance__c) {
            // Calculate the total premium based on your formula field (e.g., Total_Premium_Formula__c)
            Decimal totalPremium = opp.Total_Primium_Customer_Selection__c;

            // Apply an 8% discount
            Decimal discount = totalPremium * 0.08;

            // Calculate the discounted total premium
            Decimal discountedTotalPremium = totalPremium - discount;

            // Store the discounted premium in the custom field
            opp.Discounted_Premium__c = discountedTotalPremium;
        } else {
            // If the checkbox is not selected, set the Discounted_Premium__c field to null or zero
            opp.Discounted_Premium__c = null; // or 0, depending on your preference
        }
    }
}