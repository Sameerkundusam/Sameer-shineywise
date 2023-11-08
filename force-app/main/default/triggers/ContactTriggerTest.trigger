trigger ContactTriggerTest on Contact (before insert,before update,before delete,after insert,after update,after delete,after undelete){
	if(trigger.isbefore){
        if(trigger.isinsert){
            for(Contact con:Trigger.new){
                if(con.Othercity==null){
                    con.othercity = 'noida';
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