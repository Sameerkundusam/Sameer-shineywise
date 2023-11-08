public class UpdateContactUsingMap {
    public static void contactToAccount(){
        
        List<Account> accList = [SELECT ID,Name,Phone FROM Account WHERE CreatedDate = last_year AND Phone != Null];
        Map<ID,Account> mapIdToAccount = new Map<ID,Account>(accList);
        
        List<Contact> conList = [SELECT ID,AccountId,Phone FROM Contact WHERE AccountId IN : mapIdToAccount.keySet()];
        
 		List<Contact> updatedConList  = new  List<Contact>();      
        if(!conList.isEmpty()){
            for(Contact con : conList){
                If(mapIdToAccount.containsKey(con.AccountId)){
                    Contact conRec = new Contact();
                	conRec.Id = con.Id;
                    conRec.Phone = mapIdToAccount.get(con.AccountId).Phone;
                    updatedConList.add(conRec);
                }
            }
        }
        if(!updatedConList.isEmpty()){
            update updatedConList;
        }
    }

}