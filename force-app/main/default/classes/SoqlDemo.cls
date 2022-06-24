public  class SoqlDemo {
    public static void accountSoql_1() {
     //SOQL Query always returns the LIST<sObject>
     List<Account> listAcc = [select id, name from account
      where name like '%A%']; 
      system.debug('account list = ' + listAcc); 
      system.debug('# of accounts = ' + listAcc.size());

      //SOQL can return only sObject if it is returnining ONLY 1 RECORD 
      Account latestAcc = [select name, website from account order by createdDate desc limit 1];
      system.debug(latestAcc);
    }
    public static void accountSoql_2(){
        //SOQL can return only sObject if it is returning ONLY 1RECORD
        Account acc = [select id, name, phone,AccountNumber from Account order by CreatedDate desc limit 1];
        system.debug('latest account created is ' + acc);
        //store name in a variable
        id accid = acc.id;
        string accName = acc.Name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName);
        system.debug('acc phone is ' + accPhone);
        system.debug('acc account number is ' + acc.AccountNumber);
    } 

    public static void accountSoql_3(){
        List<account> listAcc = [select id, name, phone,accountnumber from account order by CreatedDate DESC];
        system.debug('all accounts ' + listAcc);
        //11 records
        for(account eachAccount : listAcc) {
            //1st record for the 1st iteration.
            id accid = eachAccount.id;
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('acc name is ' + accName);
            system.debug('acc phone is ' + accPhone);
            system.debug('acc account number is ' + eachAccount.AccountNumber);

            system.debug('==================================');
        }
    }
    public static void soqlDemo_Filter() {
        string accNameFilter = 'Softinnovas';
 
        list<account> listAcc = [select name from account where name = :accNameFilter];
        system.debug(listAcc);
    }
 }