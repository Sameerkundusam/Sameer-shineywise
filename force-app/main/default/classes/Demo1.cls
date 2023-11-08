public class Demo1 {
    public static void AccountToObject(){
        List<Account> accList = [SELECT name FROM Account WHERE CreatedDate = Last_year];
        List<Opportunity> oppList = new List<Opportunity>();
        
        if(!accList.isEmpty()){
            for(Account acc:accList){
                Opportunity opp = new Opportunity();
                opp.Name = 'newOpp';
                opp.StageName = 'Prospecting';
                opp.CloseDate = System.today();
                opp.AccountId=acc.id;
                oppList.add(opp);
            }
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }
}