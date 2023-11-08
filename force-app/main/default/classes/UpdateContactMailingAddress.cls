public class UpdateContactMailingAddress implements Database.Batchable<sObject>,Database.Stateful{
    public Integer recordCount = 0;
    public Database.QueryLocator start(Database.BatchableContext bc) {
        string query = 'SELECT Id,BillingStreet,BillingCity,BillingState,BillingPostalCode, ';
        	   query += '(SELECT Id,MailingStreet,MailingCity,MailingState,MailingPostalCode FROM Contacts) ';
        	   query += 'FROM Account Limit 5';
        return database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc,List<Account> accList){
        List<Contact> conList = new List<Contact>();
        for(Account acc:accList){
            for (Contact con : acc.Contacts) {
                con.MailingCity = acc.BillingCity;
                con.MailingStreet = acc.BillingStreet;
                con.MailingState = acc.BillingState;
                con.MailingPostalCode = acc.BillingPostalCode;
                conList.add(con);
                recordCount++;
            }
        }
        update conList;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Record Count = ' + recordCount);
    }
}