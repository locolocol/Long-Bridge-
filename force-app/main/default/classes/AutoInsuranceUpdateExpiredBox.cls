public  with sharing class AutoInsuranceUpdateExpiredBox implements Database.Batchable<sObject> {
 
        public Database.QueryLocator start(Database.BatchableContext bc) {
            // Fetch Auto Insurance policies where Policy_Start_Date__c is in the past
            String query = 'SELECT Id, Policy_Start_Date__c, Policy_Expiration_Date__c	, Is_Expired__c FROM Auto_Insurance_Quotes__c WHERE Policy_Expiration_Date__c <= TODAY AND Is_Expired__c = false';
            return Database.getQueryLocator(query);
        }
    
        public void execute(Database.BatchableContext bc, List<Auto_Insurance_Quotes__c> autoInsuranceList) {
            
            for (Auto_Insurance_Quotes__c insurance : autoInsuranceList) {
                Date expirationDate = insurance.Policy_Expiration_Date__c;
                if (expirationDate < Date.today()) {
                    insurance.Is_Expired__c = true;
                }
            }
            update autoInsuranceList;
        }
    
        public void finish(Database.BatchableContext bc) {
            // Optional: Perform any cleanup or additional actions after the batch completes.
            system.debug('Batch Class is  Completed');

        }
    }
    
