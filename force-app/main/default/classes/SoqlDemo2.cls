public  class SoqlDemo2 {
    public static void childToParent_Soql1(){
        //querying contact records
        List<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

        for(contact eachContact : listCnt) {
            string accName = eachContact.Account.Name;
            System.debug('contact name is ' + eachContact.name + 'its a is ' + accName);
        }
    }
    //Print the Annuel revenue and name of all the accounts of type 'Costomer - Direk'
    //and also print the Opportunity Name and Amount for the respective 'Closed Won' opportunities.
    public static void sampleSoql4() {
        list<account> accountWithOpplist =[select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        //list<account>
           //----> list<opprtunities>
           for(account eachAcc : accountWithOppList) {
               System.debug('acc name is ' + eachAcc.name + ', annuel revenue is ' + eachAcc.AnnualRevenue);
               List<Opportunity> eachAccOpps = eachAcc.Opportunities;
               for (Opportunity opp : eachAccOpps) {
                system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
            }
            system.debug('-----------------');
   
           }
    }
    // public static void soqlDemo5() {
    //     List<salesforce_project__c> listSP = [Select Id, Name, project_name__c,
    //                                          (select Name, subject__c, 
    //                                          priority__c from Salesforce_Tickets__r)
    //                                           FROM salesforce_project__c];
    //     //Project ID : SP-1001 - Total # ST: 2 and High Priority ST : 1
    //     integer totalHighPriorityST = 0;
    //     for (salesforce_project__c eachSP : listSP) {
    //         List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
    //         string spName = eachSP.Name;
    //         integer totalST = listST.size();
    //         integer highPriorityST = 0;
    //     for(salesforce_ticket__c eachST : listST) {
    //         if(eachSt.Priority__c == 'High'){
    //             highPriorityST++;
    //             totalHighPriorityST++;
    //         }
    //     }
    //     System.debug('Project ID: ' + spName + ', Total # ST: ' + totalST + ', high priority ST: ' +  highPriorityST);
    //     }
    //     System.debug('total high priority tickets in the org ' + totalHighPriorityST);
    // }
}
