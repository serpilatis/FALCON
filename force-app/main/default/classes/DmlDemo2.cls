public  class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right(){
        //1. get list of acc via query
        List<Account> listAcc = [select id, name,Description from account order by CreatedDate limit 150];

        //2. create new list of account which will be used to update records
        list<account> updateAccounts = new list<account>();
        for (account acc : listAcc) {
            acc.Name += 'vB';
            acc.Description = 'Update via bulk DML';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }
    }
}