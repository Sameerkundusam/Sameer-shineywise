trigger AccountAddressTrigger on Account (before insert,before update) {
    if(trigger.isbefore && trigger.isinsert){
        AccountAddressTriggerHandler.beforeinsertrecords(trigger.new);
    }
    
    
}