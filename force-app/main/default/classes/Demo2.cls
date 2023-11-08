public class Demo2 {
    
    public static void GetOpportunity(){
        List<Opportunity> oppList = [SELECT Name FROM Opportunity WHERE CreatedDate=Last_Week];
        
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                if(opp.StageName == 'Closed Won'){
                    opp.Description = 'Opportunity is Closed Won';
                }
                else if(opp.StageName == 'Closed Lost'){
                    opp.Description = 'Opportunity is Closed Lost';
                }
            }
            update oppList;
        }
        
    }

}