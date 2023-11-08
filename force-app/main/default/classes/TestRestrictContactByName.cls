@isTest
public class TestRestrictContactByName {
	@isTest static void TestRestrictContactByNametWithOneContact() {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
       Contact con = new Contact(FirstName = 'test',
            LastName='INVALIDNAME'
            );
        
        // Perform test
        Test.startTest();
        Database.UpsertResult result = Database.upsert(con, false);
        
        Test.stopTest();
        // Verify 
        // so verify that we got back an error.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML',
                            result.getErrors()[0].getMessage());
    }
}