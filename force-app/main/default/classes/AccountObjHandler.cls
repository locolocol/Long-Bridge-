public with sharing class AccountObjHandler {
     public static void beforeInsert(list<account> newAccounts){
       for(Account  acc:newAccounts){
       // Use Case 2 copy billig adress into shipping adress
        if(acc.BillingStreet !=null && acc.BillingCity == null && acc.ShippingStreet == null & acc.ShippingCity == null){
            acc.ShippingStreet = acc.BillingStreet ;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingState = acc.BillingState;
            acc.ShippingCountry = acc.BillingCountry;
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
        // Use Case 2 validate if the annual revenue is > 100,000
        if(acc.AnnualRevenue == null || acc.AnnualRevenue < 100000){
            acc.addError('Annual revenue of any account should be greater than $100K');
        }
       }
     }
     public static void beforeUpdate(Map<Id, Account> oldAccounts, Map<Id, Account> newAccounts) {
        // Use case 4: Validate account name change
        for (Id key : newAccounts.keySet()) {
            Account oldAccount = oldAccounts.get(key);
            Account newAccount = newAccounts.get(key);
            
            if (!oldAccount.Name.equals(newAccount.Name)) {
                newAccount.addError('Account name once created cannot change');
            }
       }
     }
     public static void beforeDelete(){

     }

     //save
     public static void afterInsert(list<account> newAccounts){
        list<Contact> contacts = new list<contact>();
        for(Account acc:newAccounts){
            //Use case 3 : create a contact
            contact con = new contact();
            con.LastName = acc.Name;
            con.FirstName = 'SFA';
            con.accountId = acc.Id;
            contacts.add(con);
        }
        insert contacts;

     }
     public static void afterUpdate(Map<Id, Account> oldAccounts, Map<Id, Account> newAccounts) {
        Set<Id> accountIds = new Set<Id>();
         // Use Case 5 Copy the billing adress change to related children contact
        for (Id key : newAccounts.keySet()) {
            Account oldAccount = oldAccounts.get(key);
            Account newAccount = newAccounts.get(key);
            
            if (oldAccount.BillingStreet != newAccount.BillingStreet || oldAccount.BillingCity != newAccount.BillingCity ||
                oldAccount.BillingState != newAccount.BillingState || oldAccount.BillingCountry != newAccount.BillingCountry ||
                oldAccount.BillingPostalCode != newAccount.BillingPostalCode) {
                accountIds.add(key);
            }
        }
        
        List<Contact> contactsToUpdate = [SELECT Id, AccountId, MailingStreet, MailingCity, MailingState, MailingCountry, MailingPostalCode 
        FROM Contact WHERE AccountId IN :accountIds];

        
        for (Contact con : contactsToUpdate) {
            Account acc = newAccounts.get(con.AccountId);
            con.MailingStreet = acc.BillingStreet;
            con.MailingCity = acc.BillingCity;
            con.MailingState = acc.BillingState;
            con.MailingCountry = acc.BillingCountry;
            con.MailingPostalCode = acc.BillingPostalCode;
        }
        
        update contactsToUpdate;
    }
    
     public static void afterDelete(){

     }
     public static void afterUndelete(){

     }
}