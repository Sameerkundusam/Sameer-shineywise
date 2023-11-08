trigger AddLastNametoAccount on Contact (after insert) {
    
    If(trigger.IsAfter){
        
        Set<Id> accIdsSet = new Set<Id>();
        if(trigger.IsInsert)
        {
            for(Contact con : trigger.new)
            {
                if(con.AccountId != null)
                {
                    accIdsSet.add(con.AccountId);
                }
            }
            List<Account> acclist = [SELECT Id,Name,(SELECT Id FROM Contacts) FROM Account WHERE ID IN :accIdsSet];
			
            for(Account acc: acclist){
                
            }
        }
    }

}