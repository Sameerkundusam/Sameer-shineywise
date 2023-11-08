public class ChildToParent {
    public static void contactToAccount(){
        List<Contact> conList = [SELECT ID,Name,Account.Phone,Phone FROM Contact WHERE Account.id != null];
        
        if(!conList.isEmpty()){
            for(Contact con : conList){
                if(con.Phone == Null && con.Account.Phone != Null){
                    con.Phone = con.Account.Phone;
                }
                
            }
            update conList;
        }
    }

}