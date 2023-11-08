public class OppProcessor implements Database.Batchable<sObject>,Database.stateful{
	public integer recordCount = 0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT ID,Name FROM Opportunity]);
    }
    
    public void execute(Database.BatchableContext bc,List<Opportunity> opps){
        
        for(Opportunity opp : opps){
            opp.LeadSource = 'Web';
        }
        upsert opps;
        recordCount = recordCount + opps.size();
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Records are '+recordCount);
    }
}