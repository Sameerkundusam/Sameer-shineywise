public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer conNum,String lastname){
        List<Contact> con = new List<Contact>();
        for(Integer i=0;i<conNum;i++) {
            Contact a = new Contact(FirstName='Test' + i,
                                   LastName = lastname);
            con.add(a);
        }
       // insert con;
        return con;
    }
}