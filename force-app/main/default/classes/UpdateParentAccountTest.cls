@isTest
public class UpdateParentAccountTest {
    @TestSetup
    static void CreateSetup(){
        List<Account> accList = new List<Account>();
        accList.add(new Account(Name='Parent'));
        for(Integer i=0 ; i<100 ; i++){
            accList.add(new Account(Name='Test Account'+i));
        }
        insert accList;
    }
    
    @isTest
    public static void TestQueueable(){
        
        List<Account> accRecords = [Select id From Account where name Like 'Test Account%'];
        ID parentId = [Select id from Account where Name ='Parent'][0].ID;
        UpdateParentAccount upds = new UpdateParentAccount(accRecords,parentId);
        Test.startTest();
        System.enqueueJob(upds);
        Test.stopTest();
        
        System.assertEquals(100, [select count() from Account Where parentId =: parentId]);
    }

}