trigger OpportunityTriggerTest on Opportunity (before insert,before update,before delete,after insert,after update,after delete,after undelete) {
    if(trigger.isbefore){
        if(trigger.isinsert){
            for(Opportunity opp:trigger.new){
                if(opp.amount<10){
                    opp.amount.adderror('Enter big amount');
                }
            }
            
        }else if(trigger.isupdate){
        //  if(trigger.new.amount==trigger.old.amount){
                 for(Opportunity opp:trigger.new){
                     if(opp.amount==trigger.oldmap.get(opp.id).amount)
               opp.adderror('Please modify');
            }
          //   }
          
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