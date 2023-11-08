public class UpdateParentAccount implements Queueable {
    
    private List<Account> accList;
    private ID parentAccId;
    
    public  UpdateParentAccount(List<Account> accRecords,ID id){
		this.accList = accRecords;
        this.parentAccId=id;
    }
    public void execute(QueueableContext context){
        for(Account acc: accList){
            acc.ParentId  = parentAccId;
        }
        update accList;
    }

}