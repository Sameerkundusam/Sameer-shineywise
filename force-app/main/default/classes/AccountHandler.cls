public class AccountHandler {
    public static void insertAccount(Integer value){
        Integer counter = 1;
      	List<Account> addAccounts= new List<Account>();
        while(counter <= value){
            Account accounts = new Account();
            accounts.Name = 'Acme Inc '+counter;
            accounts.AccountNumber = 'A000'+counter;
            addAccounts.add(accounts);
             counter = counter + 1;
        }
        insert addAccounts;
    }

}