@isTest
public class OppProcessorTest {
	@isTest
    public static void TestBatchClass(){
        List<Opportunity> oppList = new List<Opportunity>();
        for(integer i = 0; i<200 ; i++){
            oppList.add(
            new Opportunity(Name = 'test'+i,StageName='procting',CloseDate = System.today()));
        }
        insert oppList;
        
        Test.startTest();
        OppProcessor opps = new OppProcessor();
        ID batchId = Database.executeBatch(opps);
        Test.stopTest();
        List<Opportunity> updatedList = [SELECT ID From Opportunity WHERE LeadSource='Web'];
        System.assertEquals(200, updatedList.size());
    }
}