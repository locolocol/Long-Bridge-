public   class AutoLoanTriggerHandler {
         public static void handleBeforeInsert(List<Auto_Insurance_Quotes__c> newQuotes, Map<Id, Auto_Insurance_Quotes__c> oldMap) {
            Set<Decimal> driverLicenseNumbers = new Set<Decimal>();
    
            // Collect all driver's license numbers from the new records
            for (Auto_Insurance_Quotes__c quote : newQuotes) {
                driverLicenseNumbers.add(quote.Driver_Licence__c);
            }
    
            // Query for existing records with matching driver's license numbers
            List<Auto_Insurance_Quotes__c> existingQuotes = [SELECT Id, Driver_Licence__c
                                                             FROM Auto_Insurance_Quotes__c 
                                                             WHERE Driver_Licence__c IN :driverLicenseNumbers];
    
            // Check for duplicates and prevent insertion
            for (Auto_Insurance_Quotes__c quote : newQuotes) {
                for (Auto_Insurance_Quotes__c existingQuote : existingQuotes) {
                    // Exclude the current record being updated from the duplicate check
                    if (quote.Driver_Licence__c == existingQuote.Driver_Licence__c && 
                        (quote.Id != existingQuote.Id || Trigger.isInsert)) {
                        // Add an error if it's a new record or the driver's license number is changed during an update
                        quote.addError('A quote with this Driver License\'s Number already exists.');
                        break; // Exit the loop since an error is added
                    }
                } 
            }
        }
        public static void socicalNumberInsert(List<Auto_Insurance_Quotes__c> newQuotes, Map<Id, Auto_Insurance_Quotes__c> oldMap) {
            Set<Decimal> SocialNum = new Set<Decimal>();
            
            // Collect all non-null and non-zero Social Security Numbers from the new records
            for (Auto_Insurance_Quotes__c quote : newQuotes) {
                if (quote.Social_Security_Number__c != null && quote.Social_Security_Number__c != 0) {
                    SocialNum.add(quote.Social_Security_Number__c);
                }
            }
            
            // Query for existing records with matching Social Security Numbers
            List<Auto_Insurance_Quotes__c> existingQuotes = [SELECT ID, Social_Security_Number__c
                                                            FROM Auto_Insurance_Quotes__c
                                                            WHERE Social_Security_Number__c IN :SocialNum];
            
            // Check for duplicates and prevent insertion
            for (Auto_Insurance_Quotes__c quote : newQuotes) {
                if (quote.Social_Security_Number__c != null && quote.Social_Security_Number__c != 0) {
                    for (Auto_Insurance_Quotes__c existingQuote : existingQuotes) {
                        if (quote.Social_Security_Number__c == existingQuote.Social_Security_Number__c && 
                            (quote.Id != existingQuote.Id || Trigger.isInsert)) {
                                quote.addError('A record with the same Social Security Number (' + quote.Social_Security_Number__c + ') already exists. Original Record ID: ' + existingQuote.Id);
                                break; // Exit the loop since an error is added
                        }
                    }
                }
            }
        }
        
        
          
    
        public static void handleBeforeUpdate(List<Auto_Insurance_Quotes__c> newQuotes, Map<Id, Auto_Insurance_Quotes__c> oldMap) {
            // Handle the Birth Date validation for updates here
            for (Auto_Insurance_Quotes__c quote : newQuotes) {
                Auto_Insurance_Quotes__c oldQuote = oldMap.get(quote.Id);
                if (quote.Birth_Date__c != oldQuote.Birth_Date__c) {
                    // Birth Date has changed in the update
                    Date birthDate = quote.Birth_Date__c;
                    Date today = Date.today();
                    
                    // Check if the birth date is in the future
                    if (birthDate > today) {
                        quote.addError('Birth date cannot be set in the future.');
                    } else {
                        Integer ageInYears = today.year() - birthDate.year();
        
                        // Check if the birth date has occurred this year
                        if (today.month() < birthDate.month() || (today.month() == birthDate.month() && today.day() < birthDate.day())) {
                            ageInYears--;
                        }
        
                        if (ageInYears < 18) {
                            quote.addError('Auto insurance quotes cannot be given to customers under 18 years old.');
                        }
                    }
                }
            }
        }
        
  public static void handleOpportunityCreation(List<Auto_Insurance_Quotes__c> newRecords) {
    List<Opportunity> opportunitiesToInsert = new List<Opportunity>();

    for (Auto_Insurance_Quotes__c autoInsurance : newRecords) {
        if (autoInsurance.Stage__c == 'Closed Won') {
            // Create a new Opportunity
            Opportunity opp = new Opportunity();

            // Populate Opportunity fields with corresponding Auto Insurance fields
            opp.Name = autoInsurance.First_Name__c;
            opp.Driver_Licence__c = autoInsurance.Driver_Licence__c;
            opp.Social_Security_Number__c = autoInsurance.Social_Security_Number__c;
            opp.StageName = 'Closed Won';
            opp.CloseDate = Date.today();
            // Add other fields as needed

            opportunitiesToInsert.add(opp);
        }
    }

     // Insert the new Opportunities
     if (!opportunitiesToInsert.isEmpty()) {
        try {
            insert opportunitiesToInsert;
        } catch (Exception e) {
            // Handle any exceptions here, e.g., log the error message.
            System.debug('Error inserting Opportunities: ' + e.getMessage());
    }
}
  }	 
}