trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> tasklist = new List<Task>();
    for(Opportunity opp: [SELECT Id, StageName FROM Opportunity WHERE StageName='Closed Won' AND Id IN: Trigger.New])
    {
        tasklist.add(new Task(Subject='Follow Up Test Task',WhatId = opp.Id));
    }
    if(tasklist.size()>0){
        insert tasklist;
    }
}