global class LeadProcessor implements
    Database.Batchable<sObject> {
	global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT id,LeadSource FROM Lead '
        );
    }
	 global void execute(Database.BatchableContext bc, List<Lead> scope){
     
        for (Lead l: scope) {
				l.LeadSource = 'DreamForce';            
            
        }
        update scope;
    }
        global void finish(Database.BatchableContext bc){
        Id job= bc.getJobId();
        System.debug(job);
    }
  }