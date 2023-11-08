public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string sear){
        List<List<sObject>> searchList = [FIND :sear IN ALL FIELDS
                    RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
    	return searchList;
    }
	
}