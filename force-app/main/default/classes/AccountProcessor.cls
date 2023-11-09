public with sharing class AccountProcessor {
     @future
     public static void countContacts(list<Id> accountsIds) {
        list<Account> accounts = [Select ID, Name, (Select Id From Contacts) From Account where Id IN :accountsIds];
        for(Account acc : accounts){
            acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        update accounts;
     }
}