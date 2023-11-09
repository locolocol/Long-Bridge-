trigger AccountObjTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete ) {
   // automation code
   if(Trigger.isBefore){
      if(Trigger.isInsert){
        // all field updates & Validation before inserting a new record
        AccountObjHandler.beforeInsert(Trigger.new);
      } else if(Trigger.isUpdate){
                // all field updates & Validation before updating a record
         AccountObjHandler.beforeUpdate(Trigger.oldMap, Trigger.newMap);
      }else if(Trigger.isDelete){
                // all field updates & Validation before deleting a record
                
      }
   }
   if(Trigger.isAfter){
       if(Trigger.isInsert){
        // all related operation while a record is getting create 
        AccountObjHandler.afterInsert(Trigger.new);

       }else if(Trigger.isUpdate){
         // all related operation while a record is getting update 
         AccountObjHandler.afterUpdate(Trigger.oldMap, Trigger.newMap);
       }else if(Trigger.isDelete){
        // all related operation while a record is getting Delete 

       }else if(Trigger.isUndelete){
        // all related operation while a record is getting undelete 

       }
   }
}