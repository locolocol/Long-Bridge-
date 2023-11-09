public with sharing class ContactHandler {
    public static void afterInsert(List<Contact> newContacts) {
        List<Id> accountIds = new List<Id>();
        for (Contact con : newContacts) {
            accountIds.add(con.AccountId);
        }
        
        // We are calling a method here
        AccountProcessor.countContacts(accountIds);
    }
}
