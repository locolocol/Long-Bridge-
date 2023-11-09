public with sharing class AgentPerformanceSummaryBatch implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext context) {
        Date startDate = Date.today().toStartOfMonth();
        Date endDate = startDate.addMonths(1).addDays(-1);
        String query = 'SELECT Id, User__c, Policy_Start_Date__c, Policy_Expiration_Date__c, Is_Expired__c, Zipcode__c, Premium_for_Auto_Total__c, Customer_Age__c ' +
    'FROM Auto_Insurance_Quotes__c ' +
    'WHERE Policy_Expiration_Date__c >= :startDate AND Policy_Expiration_Date__c <= :endDate';

    Integer recordCount = [SELECT COUNT() FROM Auto_Insurance_Quotes__c WHERE Policy_Start_Date__c >= :startDate AND Policy_Expiration_Date__c <= :endDate];
     System.debug('Number of records retrieved: ' + recordCount);    

     System.debug('Query: ' + query); // Debug statement
     System.debug('firstDayOfMonth: ' + startDate);
     System.debug('lastDayOfMonth: ' + endDate);
     return Database.getQueryLocator(query);
    }

    public void execute(Database.BatchableContext context, List<Auto_Insurance_Quotes__c> scope) {
        List<Agent_Performance__c> agentPerformanceUpdates = new List<Agent_Performance__c>();
        
        for (Auto_Insurance_Quotes__c insuranceQuote : scope) {
            Agent_Performance__c performance = new Agent_Performance__c();
            
            // Establish a lookup relationship with the Agent (User) using the Agent__c field.
            performance.Agent__c = insuranceQuote.User__c;
            //performance.Agent__c.Name = insuranceQuote.User__r.Name;
            
            // Check if the insurance quote is expired (Is_Expired__c is true).
            if (insuranceQuote.Is_Expired__c) {
                // Increment the Policies_Sold__c field if it's expired.
                performance.Policies_Sold__c = 1; // You may need to adjust this logic.
                
                // Populate the Interaction_Date__c with the quote's Policy_Expiration_Date__c.
                performance.Interaction_Date__c = insuranceQuote.Policy_Expiration_Date__c;
                performance.Insurance_Start_Date__c = insuranceQuote.Policy_Start_Date__c;
                performance.Zipcode__c=insuranceQuote.Zipcode__c;
                performance.Customer_Age__c = insuranceQuote.Customer_Age__c;
                performance.Total_Amount__c=insuranceQuote.Premium_for_Auto_Total__c;
                 
                // You can add the logic to update the Interactions__c field here.
                // For example, you can increment the Interactions__c field based on interactions made by the agent.
                performance.Interactions__c = 1; // You may need to adjust this logic.
            }            
            // Add the Agent_Performance__c record to the list for updates.
            agentPerformanceUpdates.add(performance);
        }       
        // Perform the necessary DML operations to update the Agent_Performance__c records.
        // Check if there are records to update.
        if (!agentPerformanceUpdates.isEmpty()) {
            insert agentPerformanceUpdates;
            System.debug('Created ' + agentPerformanceUpdates.size() + ' Agent Performance records.'); // Debug statement
        }
    }
    
    public void finish(Database.BatchableContext context) {
        // Optional: Perform any cleanup or additional actions after the batch completes.
    }
}
