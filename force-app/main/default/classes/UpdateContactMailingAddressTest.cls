@isTest
public class UpdateContactMailingAddressTest {
    
   /* @testsetup
    static void testdatasetup(){
        Account acc = new Account(Name='Test',BillingStreet = 'Test Street', BillingCity='New York',BillingState = 'Uttar Pradesh', BillingCountry='USA', BillingPostalCode = '12345');
        insert acc;
        
        Contact con = new Contact (LastName = 'Test Con', AccountId = acc.Id);
        insert con;
        
    }
    
    static testmethod void TestFunction(){
        List<Account> acclst = [SELECT Id,BillingStreet,BillingCity,BillingState,BillingCountry,BillingPostalCode FROM Account];
        
        test.startTest();
        UpdateContactMailingAddress accAddress = new UpdateContactMailingAddress();
         Id batchId = Database.executeBatch(accAddress);
        system.Assert(batchId != null);
        test.stopTest();
    }*/
    @isTest
    public static void testAddressCopy() {
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();

        for(Integer i = 1; i<=5 ;i++){
       	 	Account acc = new Account(Name='Test'+i,BillingStreet = 'Test Street', BillingCity='New York',BillingState = 'Uttar Pradesh', BillingCountry='USA', BillingPostalCode = '12345');
        	accList.add(acc);
        }
        if(!accList.isEmpty()){
        	insert accList;
        }
        
        for (Account acc : accList) {
            Contact con = new Contact();
            con.LastName = 'test';
            con.AccountId = acc.Id;
            conList.add(con);
         }
        if(!conList.isEmpty()){
        	insert conList;
        }
         
         Test.startTest();
         	UpdateContactMailingAddress accAddress = new UpdateContactMailingAddress();
         	Id batchId = Database.executeBatch(accAddress);
       // system.Assert(batchId != null);
         Test.stopTest();

         Integer c = [SELECT COUNT() FROM Contact WHERE MailingCity='New York'];
		 System.assertEquals(5,c);

    }
}