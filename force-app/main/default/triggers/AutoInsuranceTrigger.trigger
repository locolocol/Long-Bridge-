trigger AutoInsuranceTrigger on Auto_Insurance_Quotes__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert  ) {
            AutoLoanTriggerHandler.handleBeforeInsert(Trigger.new, null);
            AutoLoanTriggerHandler.handleOpportunityCreation(Trigger.new);
            AutoLoanTriggerHandler.socicalNumberInsert(Trigger.new,null);
            
 
         
        }else if (Trigger.isUpdate) {
            AutoLoanTriggerHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);
            AutoLoanTriggerHandler.handleBeforeInsert(Trigger.new, Trigger.oldMap);
            AutoLoanTriggerHandler.socicalNumberInsert(Trigger.new,Trigger.oldMap);


        }
    } else if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            // Handle "after insert" logic if needed
        } else if (Trigger.isUpdate) {
            AutoLoanTriggerHandler.handleOpportunityCreation(Trigger.new);
            // Handle other "after update" logic if needed
        } else if (Trigger.isDelete) {
            // Handle "after delete" logic if needed
        } else if (Trigger.isUndelete) {
            // Handle "after undelete" logic if needed
        }
    }
}