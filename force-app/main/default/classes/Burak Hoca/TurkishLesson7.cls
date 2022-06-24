public  class TurkishLesson7 {
    //name i parametre olarak alan ve o name ile bir Account create eden bir metet..
    public static void createAcc(string acName, decimal anRvn){
        Account acc = new Account();
        acc.name = acName;
        acc.AnnualRevenue = anRvn;
        //Account acc = new Account(name= acName);
        System.debug(acc);
        insert acc;

        //Bu accounta bagli 5 tane contact create edlim. first name accountun name i olsun. Last name Contact olsun ve 1 2 3 4 5 seklinde sirali olsun.

        list<contact> cntList =  new list<contact>();

        for (integer i = 1; i<=5; i++){
            contact cnt = new contact();
            cnt.firstName = acc.name;
            cnt.lastName = 'Contact ' + i;
            cnt.accountId = acc.id;
            cntList.add(cnt);
        }
        if(!cntList.isEmpty()){
            insert cntList;
        }


    }

}