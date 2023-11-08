@isTest
public class AccountCalculatorTest {
	@isTest
    public static void countContactsTest(){
        List<Account> accList = new List<Account>();
        
        for(Integer i=0;i<200;i++){
            accList.add(new Account(Name='Test'+i));
        }
        insert accList;
        
        List<Contact> conList = new List<Contact>();
        List<Id> accIds=new List<Id>();
        for(Account acc:accList){
            conList.add(new Contact(FirstName='Test',LastName=acc.Name,AccountId=acc.Id));
            accIds.add(acc.id);
        }
        insert conList;
        Test.startTest();
        AccountCalculator.countContact(accIds);
        Test.stopTest();
        
        List<Account> accs = [Select id,Number_of_Contacts__c From Account];
        System.assertEquals(1, accs[0].Number_of_Contacts__c);
    }
}