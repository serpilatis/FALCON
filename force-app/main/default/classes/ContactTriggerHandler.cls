public  class ContactTriggerHandler {
    //ASSIGNMENT 
// 2) Create a Future  class method  with the  following requirement with  Test class 
// • Create a trigger which updates  Description on  Account   
// i. Steps  to be performed in the Trigger 
// 1. When  any change in the status  of the Contact record. 
// 2. Create a Status  custom  Picklist on  Contact Object. 
// 3. Get all the Id’s of their related Accounts. 
// 4. Call future Method passing the Account Id’s 
// ii. Steps  to be performed in future method 
// 1. Read all the related contact records of the account 
// 2. Create a map which  holds  Key as status  and Value as Count  of 
// status 
// 3. Update  the Account  records with the  details which  we 
// received from the  Map 
    // public static void InsertUpdateContactStatus(List<contact> triggerNew,
    //                                             List<contact> triggerOld,
    //                                             map<id, contact> triggerNewMap,
    //                                             map<id, contact> triggerOldMap){


    //  Set<id> setIdcnt = new Set<id>();
    //  for(contact con: triggerNew){
    //      if(con.status__c != triggerOldmap.get(con.id).status__c){
    //          if(con.accountid!=null){
    //              setIdcnt.add(con.AcountId);
    //          }
    //      }
    //      List<contact> updatedCnt = [select id, accountid]
    //  }                                               

    // }












//================================================================================
    public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
//.AddError is allowed in Trigger.NEW.
//it is not allowed in trigger.old
    for(contact eachContact: cntTriggerNew){
            contact oldContact = cntTriggerOldMap.get(eachContact.id);
        if(oldContact.LeadSource == 'Partner Referral'){
                eachContact.addError('Cannot update contact where lead source is Partner Referral');
        }
    }

}

    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
                                            Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        for(contact eachContact: cntTriggerNew){
            contact oldContact = cntTriggerOldMap.get(eachContact.id);
            if(oldContact.LeadSource != eachContact.LeadSource){
                string customValidation = system.label.contactValidation2;
                eachContact.LeadSource.addError('CANNOT UPDATE LEAD SOURCE. Please user!');
            }
        }
    }

    public static void ContactTriggerIsInsert(List<contact> cntTriggerNew, List<contact> cntTriggerOld,  Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        Set<Id> accountIds = new Set<Id>();
        for(contact c : cntTriggerNew){
            if(c.AccountId != null){
                accountIds.add(c.AccountId);
            }    
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
            if(!accList.isEmpty()){
                list<Account> updateAccountList = new list<Account>();
                for(Account eachAcc : accList){
                    List<Contact> contactsList = eachAcc.contacts;

                    Account acc = new Account();
                    acc.id = eachAcc.id;
                    acc.Number_Of_Contacts__c = contactsList.size();
                    updateAccountList.add(acc);

                }
                if(!updateAccountList.isEmpty()){
                    update updateAccountList;
                }
            }
        }
    }

    public static void ContactTriggerIsUpdate(List<contact> cntTriggerNew, List<contact> cntTriggerOld,  Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        Set<Id> accountIds = new Set<Id>();
        for(contact c : cntTriggerNew){
            if(c.AccountId != cntTriggerOldMap.get(c.Id).AccountId){
                accountIds.add(c.AccountId);
                accountIds.add(cntTriggerOldMap.get(c.Id).AccountId);
            }
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
            if(!accList.isEmpty()){
                list<Account> updateAccountList = new list<Account>();
                for(Account eachAcc : accList){
                    List<Contact> contactsList = eachAcc.contacts;

                    Account acc = new Account();
                    acc.id = eachAcc.id;
                    acc.Number_Of_Contacts__c = contactsList.size();
                    updateAccountList.add(acc);

                }
                if(!updateAccountList.isEmpty()){
                    update updateAccountList;
                }
            }
        }   
    }

    public static void ContactTriggerIsDelete(List<contact> cntTriggerNew, List<contact> cntTriggerOld,  Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
        Set<Id> accountIds = new Set<Id>();
        for(contact c :cntTriggerOld){
            if(c.AccountId != null){
                accountIds.add(c.AccountId);

            }
        }
        if(!accountIds.isEmpty()){
            List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
            if(!accList.isEmpty()){
                list<Account> updateAccountList = new list<Account>();
                for(Account eachAcc : accList){
                    List<Contact> contactsList = eachAcc.contacts;

                    Account acc = new Account();
                    acc.id = eachAcc.id;
                    acc.Number_Of_Contacts__c = contactsList.size();
                    updateAccountList.add(acc);

                }
                if(!updateAccountList.isEmpty()){
                    update updateAccountList;
                }
            }
        }   
    }
}