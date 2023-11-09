public with sharing class SocialController {
    @AuraEnabled
    public static List<Auto_Insurance_Quotes__c> SearchSocials(Integer searchKey) {
        List<Auto_Insurance_Quotes__c> results = [SELECT Id, First_Name__c, Birth_Date__c,Social_Security_Number__c
                                                 FROM Auto_Insurance_Quotes__c
                                                 WHERE Social_Security_Number__c = :searchkey
                                                 WITH SECURITY_ENFORCED];
        return results;
    }
}
/*
OR
@AuraEnabled
public static List<Employee__c> searchEmployees(String searchKey){
    searchKey = '%' + searchKey + '%';
    return [SELECT Employee_Name__c, Designation__c, Email__c
            FROM Employee__c 
            WHERE Employee_Name__c LIKE :searchKey
            WITH SECURITY_ENFORCED];
}*/