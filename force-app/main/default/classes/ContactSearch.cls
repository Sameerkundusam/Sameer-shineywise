public class ContactSearch {
    public static Contact[] searchForContacts(string lastname,string mailingPostalCode){
        Contact[] cont = [SELECT ID,Name FROM Contact WHERE(LastName=:lastname AND MailingPostalCode=:mailingPostalCode)];
        return cont;
    }
}