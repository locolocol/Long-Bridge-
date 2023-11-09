trigger AutoInsuranceDuplicateDriveLicense on Auto_Insurance_Quotes__c (before insert, before update) {
         if (Trigger.isBefore) {
            if (Trigger.isInsert) {
                AutoLoanTriggerHandler.handleBeforeInsert(Trigger.new, null);
            } else if (Trigger.isUpdate) {
                AutoLoanTriggerHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);
            }
        }
    
    
  
  
    /* // Check for the Drive License to ADD error message if Duplicate Found.
    Set<Decimal> driverlicenseNumbers = new Set<Decimal>();
    
    // Collect all driver's license numbers from the new and updated records
    for (Auto_Insurance_Quotes__c quote : Trigger.new) {
        driverlicenseNumbers.add(quote.Driver_Licence__c);
    }
    
    // Query for existing records with matching driver's license numbers
    List<Auto_Insurance_Quotes__c> existingQuotes = [SELECT Id, Driver_Licence__c
                                                     FROM Auto_Insurance_Quotes__c 
                                                     WHERE Driver_Licence__c IN :driverlicenseNumbers];
    
    // Check for duplicates and prevent insertion or update
    for (Auto_Insurance_Quotes__c quote : Trigger.new) {
        for (Auto_Insurance_Quotes__c existingQuote : existingQuotes) {
            if (quote.Driver_Licence__c == existingQuote.Driver_Licence__c && quote.Id != existingQuote.Id) {
                if ((Trigger.isInsert || (Trigger.isUpdate && quote.Driver_Licence__c != Trigger.oldMap.get(quote.Id).Driver_Licence__c))) {
                    quote.addError('A quote with this Driver License\'s Number already exists.');
                }
            }
        }
    }
    // Check for the Birth Date if less than 18 years old error.
    for (Auto_Insurance_Quotes__c quote : Trigger.new) {
        if (quote.Birth_Date__c != null) {
            Date birthDate = quote.Birth_Date__c;
            Date today = Date.today();
            Integer ageInYears = today.year() - birthDate.year();
            
            // Check if the birth date has occurred this year
            if (today.month() < birthDate.month() || (today.month() == birthDate.month() && today.day() < birthDate.day())) {
                ageInYears--;
            }
            
            if (ageInYears < 18) {
                quote.addError('Auto insurance quotes cannot be given to customers under 18 years old.');
            }
        }
    }*/
   }
