// Deploy Handler First 
public with sharing class AllowanceHandler {
    public static void beforeInsert(list<Allowance__c> newAllowances){
       checkThresholds(newAllowances);
    }
    public static void beforeUpdate(list<Allowance__c> newAllowances, list<Allowance__c> oldAllowances){
        checkThresholds(newAllowances);
       
        
    }
    public static void beforeDelete(list<Allowance__c> newAllowances){

    }
    public static void afterInsert(List<Allowance__c> newAllowances){

    }
    public static void afterUpdate(List<Allowance__c> newAllowances, list<Allowance__c> oldAllowances){
        Map<Id, Decimal> accIdVsAmount = new Map<id,Decimal>();
        for(Allowance__c al : newAllowances){
            if(al.Status__c == 'Approved'){
                accIdVsAmount.put(al.Account__c, al.Amount__c);
            }
        }
        if(!accIdVsAmount.isEmpty()){

        }


    }
    public static void checkThresholds(List<Allowance__c> allowances) {
        for (Allowance__c al : allowances) {
            if (al.Allowance_Type__c == 'Leave Travel Allowance' && al.Amount__c > 20000) {
                al.addError('The threshold amount for allowance of type ' + al.Allowance_Type__c + ' is 20000');
            } else if (al.Allowance_Type__c == 'House Rent Allowance' && al.Amount__c > 10000) {
                al.addError('The threshold amount for allowance of type ' + al.Allowance_Type__c + ' is 10000');
            } else if (al.Allowance_Type__c == 'Well Being Allowance' && al.Amount__c > 15000) {
                al.addError('The threshold amount for allowance of type ' + al.Allowance_Type__c + ' is 15000');
            } else if (al.Allowance_Type__c == 'Cab Allowance' && al.Amount__c > 1000) {
                al.addError('The threshold amount for allowance of type ' + al.Allowance_Type__c + ' is 1000');
            } else if (al.Allowance_Type__c == 'Work From Home Allowance' && al.Amount__c > 12000) {
                al.addError('The threshold amount for allowance of type ' + al.Allowance_Type__c + ' is 12000');
            }
        }
    }
    private static void updateAccounts (Map<id, Decimal> accIdVsAmount){
        list<Account> accounts = [Select id, Approved_Allowance_Amount__c From Account where Id = :accIdVsAmount.keyset()];
        for(Account acc : accounts){
            acc.Approved_Allowance_Amount__c = acc.Approved_Allowance_Amount__c+accIdVsAmount.get(acc.id);
        }
        try{
            update.accounts;
        }catch (Exception ex){
            // handler 
        }
    }
}    
 