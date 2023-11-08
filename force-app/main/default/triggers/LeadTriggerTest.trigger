trigger LeadTriggerTest on Lead (before insert,before update,before delete,after insert,after update,after delete,after undelete) {
	if(trigger.isbefore){
        if(trigger.isinsert){
            for(Lead li : trigger.new){
                if(li.phone==null){
                    li.phone.adderror('Complete this');
                }
            }
        }else if(trigger.isupdate){

          
        }else{
            
        }
    }else{
         if(trigger.isinsert){
    		
         }else if(trigger.isupdate){
             
         }else if(trigger.isdelete){
             
         }else{
             
         }
    }
}