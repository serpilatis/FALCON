public  class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        //1. creating new instance of account sObject
        Account acc = new account();
        //2. set field
        acc.Name = 'SoftInnovas';
        acc.Site = 'www.Softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';
  
        insert acc;
        System.debug(acc);
    }
    //insert record of custom object
    public static void dmlInsertDemo_cstmObj(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Teach DML to FALCONS';
        sp.description__c = 'All 40% are great learners';
        insert sp;
    }
    //update record right after inserting..
    public static void dmlUpdateDemo_1(){
    //insert record...
    Account acc = new account();
    acc.Name = 'S';
    insert acc;
    System.debug('inserted ' + acc);
    acc.Name = 'Salesforce Inc.';
    update acc;
    System.debug('updated ' + acc);
    }

    public static void dmlUpdateDemo_3() {
        account acc = [select name from account where name = 'SoftInnovas' order by CreatedDate desc limit 1];
        acc.Name = 'SoftInnovas Inc.';

        update acc;
        System.debug('update acc ' + acc);
    }
    //retrieve using SOQL then update record
    public static void dmlUpdateDemo_2() {
        account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];
        System.debug('acc id is ' + acc.id);

        //create a contact for this account
        contact cnt = new contact();
        cnt.lastname = 'Biden';
        cnt.AccountId = acc.id;

        insert cnt;
    }
    public static void dmlUpdateDemo_2_CO(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Apex Project';
        Insert sp;
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn APEX';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.salesforce_project__c = sp.Id;
        st.Requested_by_date__c = date.newInstance(2021, 12, 06);
        Insert st;
    }

    public static void dmlMultipleRecordInsert_right(){
        list<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlMultipleRecordInsert2_right() {
        list<account> listAcc = new list<account>();

        account acc = new account();
        acc.Name = 'SoftInnovas 30-Apr22 v0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 4; i++){
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 30-Apr22 v'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list ' + listAcc.size());

        if(!listAcc.isEmpty()){
            insert listAcc;
        }

    }
}