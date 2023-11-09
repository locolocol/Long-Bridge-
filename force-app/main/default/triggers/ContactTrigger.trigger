trigger ContactTrigger on Contact (after insert) {
    if(trigger.isAfter){
        if(Trigger.isInsert){
            ContactHandler.afterInsert(Trigger.new);
        }
    }
}