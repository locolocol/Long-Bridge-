trigger AllowanceTrigger on Allowance__c (before insert, before update,before delete, after insert , after update, after delete , after undelete) {
    // User Case If you want validation before insertion allowance record amount and allowance type populated or not 
 if ( Trigger.isBefore){
    if(trigger.isInsert){
       AllowanceHandler.beforeInsert(Trigger.new);
    }else if (Trigger.isUpdate){
        AllowanceHandler.beforeUpdate(Trigger.new, Trigger.old);
    }else if(trigger.isDelete){
        AllowanceHandler.beforeDelete(Trigger.old);
    }
 }
}