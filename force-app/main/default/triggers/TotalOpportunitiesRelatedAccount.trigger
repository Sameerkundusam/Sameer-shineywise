trigger TotalOpportunitiesRelatedAccount on Opportunity (after insert,after update,after delete) {
     If(trigger.IsAfter){
        If(trigger.IsInsert || trigger.IsUpdate){
            
            Set<Id> accIdsSet = new Set<Id>();
            
            for(Opportunity Opp : trigger.new){
                if(Opp.AccountId != null){
                    accIdsSet.add(Opp.AccountId);
                }
            }
            
            List<Account> acclist = [SELECT Id,Total_Opportunities__c,(SELECT Id FROM Opportunities) FROM Account WHERE ID IN :accIdsSet];
            
            for(Account acc: acclist){
                acc.Total_Opportunities__c = acc.Opportunities.size();
            }
            
            update acclist;
            
        }
        if(trigger.IsUpdate || trigger.IsDelete){
            
            Set<Id> accIdsSet = new Set<Id>();
            
            for(Opportunity Opp : trigger.old){
                if(Opp.AccountId != null){
                    accIdsSet.add(Opp.AccountId);
                }
            }
            
            List<Account> acclist = [SELECT Id,Total_Opportunities__c,(SELECT Id FROM Opportunities) FROM Account WHERE ID IN :accIdsSet];
            
            for(Account acc: acclist){
                acc.Total_Opportunities__c = acc.Opportunities.size();
            }
            
            update acclist;
            
        }
    }

}