public class AccountAddressTriggerHandler {
    public static void beforeinsertrecords(list<Account>acclist){
        if(!acclist.isEmpty()){
            for(Account alist:acclist){
                if(alist.Match_Billing_Address__c == true){
                    alist.ShippingPostalCode = alist.BillingPostalCode;
                }
            }
        }
    }
}