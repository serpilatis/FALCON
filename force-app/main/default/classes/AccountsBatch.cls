public  class AccountsBatch implements Database.Batchable<SObject>, database.stateful{
   //mandatory start, execute, and finish methods.
   public integer count = 0;
   public Database.QueryLocator start(database.BatchableContext bc){
       database.QueryLocator q1 = database.getQueryLocator([select id, description, Active__c from account]);
       System.debug(q1);
       return q1;

   }
   public void execute(Database.BatchableContext bc, List<account> scope){
       list<account> updateAccounts = new list<account>();
       for(account acc : scope){
           if(acc.Active__c != 'No'){
            acc.Description += '...updated via BATCH apex!';
            updateAccounts.add(acc);
            count++;
           }    
        }
        if(!updateAccounts.isEmpty()){
            System.debug('count in execute method:' + count);
            update updateAccounts;
        }  
    }
    public void finish(Database.BatchableContext bc){
        //print how many records were updated in the entire batch execution
        system.debug('done with updating ALL the ACCOUNTS');
        System.debug('total updated records = ' + count);
    }
}
      
   

