public class BulkificationExample {
    
    public static void processAccounts(List<Account> accounts) {
        List<Account> accountsToUpdate = new List<Account>();
        
        for(Account acc : accounts) {
            if(acc.AnnualRevenue != null) {
                acc.Description = 'Processed';
                accountsToUpdate.add(acc);
            }
        }
        
        if(!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}
