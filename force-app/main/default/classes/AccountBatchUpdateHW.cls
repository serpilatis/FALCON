public with sharing class AccountBatchUpdateHW implements Database.Batchable<SObject>, database.stateful{
     
    public integer count = 0; 
    public Database.QueryLocator start(Database.BatchableContext bc ){
        
       Database.QueryLocator list1 = database.getQueryLocator ([select id, name, Number_of_Contacts__c,(select id from contacts) from account]);
         return list1 ;
     }   
     
     public void execute(Database.BatchableContext bc, List<Account> list1){
        List<Account> updateAccounts = new List<Account>(); 
        for (Account acc : list1) {
            acc.Number_of_Contacts__c= acc.contacts.size();
            
            updateAccounts.add(acc);
            count++;

      }
      if(!updateAccounts.isEmpty()){
        update updateAccounts;
    }
    }     
    
    public void finish(Database.BatchableContext bc){
        //print how many records were updated in the entire batch execution.
        system.debug('done with updating All the ACCOUNTS');
        system.debug('total updated records= '+ count);
    }
   
}