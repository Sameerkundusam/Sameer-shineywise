trigger AccountPhoneUpdate on Account (before insert,before update,before delete,after insert,after update,after delete,after undelete) {
    
    if(trigger.isbefore){
        if(trigger.isinsert){
            for(Account acc:trigger.new){
                if(acc.phone == null){
                    acc.phone = '1234567890';
                }
            }
        }else if(trigger.isupdate){

            for(Account acc:trigger.new){
                if(acc.phone == null){
                    acc.phone = '99999999';
                }
            }
        }else{
            
        }
    }else{
         if(trigger.isinsert){
            for(Account acc:trigger.new){
                if(acc.phone == null){
                    acc.phone = '1234567890';
                }
            }
         }else if(trigger.isupdate){
             
         }else if(trigger.isdelete){
             
         }else{
             
         }
    }
}