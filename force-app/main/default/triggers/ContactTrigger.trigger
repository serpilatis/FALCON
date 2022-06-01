trigger ContactTrigger on Contact (before insert,before update,after insert,after update, after delete, after undelete) {
    Set<Id> accountIds = new Set<Id>();
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUndelete){
            // for(contact c : trigger.new){
            //     if(c.AccountId != null){
            //         accountIds.add(c.AccountId);
            //     }
            // }
            ContactTriggerHandler.ContactTriggerIsInsert(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);

        }

        if(trigger.isUpdate){
            // for(contact c : trigger.new){
            //     if(c.AccountId != trigger.oldMap.get(c.Id).AccountId){
            //         accountIds.add(c.AccountId);
            //         accountIds.add(trigger.oldMap.get(c.Id).AccountId);
            //     }
            // }
            ContactTriggerHandler.ContactTriggerIsUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);

        }

        if(trigger.isDelete){
            // for(contact c : trigger.old){
            //     if(c.AccountId != null){
            //         accountIds.add(c.AccountId);

            //     }
            // }
            ContactTriggerHandler.ContactTriggerIsDelete(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
        }

    //    if(!accountIds.isEmpty()){
    //         List<Account> accList = [select id, name, Number_Of_Contacts__c, (select id from contacts) from Account where id in :accountIds];
    //         if(!accList.isEmpty()){
    //             list<Account> updateAccountList = new list<Account>();
    //             for(Account eachAcc : accList){
    //                 List<Contact> contactsList = eachAcc.contacts;

    //                 Account acc = new Account();
    //                 acc.id = eachAcc.id;
    //                 acc.Number_Of_Contacts__c = contactsList.size();
    //                 updateAccountList.add(acc);

    //             }
    //             if(!updateAccountList.isEmpty()){
    //                 update updateAccountList;
    //             }
    //         }
    //     }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 //=======================================================================================================   
    
    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
//===============================================================================================
    /*Set<Id> accountIds = new Set<Id>();
    if (trigger.isAfter){
        if(trigger.isInsert || trigger.IsUpdate || trigger.isUndelete){
            for(contact c : trigger.new){
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isdelete){
            for (contact c : trigger.old) {
                if(c.accountid != null){
                    accountIds.add(c.AccountId);
                }
            }
        }
        if(!accountIds.isEmpty()){
            List<account> accList = [select id, number_of_contacts__c, (select id from contacts)
            from account  account where id in :accountIds];

            if(!accList.isEmpty()){
                list<account> updateAccList = new list<account>();
                for (account eachAcc : accList) {
                    List<contact> listContacts = eachAcc.contacts;
                    
                    Account acc = new account();
                    acc.id = eachAcc.id;
                    acc.number_of_contacts__c = listContacts.size();
                    updateAccList.add(acc);
                }
                if(!updateAccList.isEmpty()){
                    update updateAccList;
                }
            }
        }
    }*/





    }
    
    
    
   
    














  //===============================================================================  
    /*TurkceHW 27. Bir Contact insert edildiğinde First Name yazılmamışsa 'Bu record'da First Name yazılmadı.. Name sadece Last Name = [lastName] den oluşuyor.' mesajını system debug ile konsolda yazdıran bir trigger tasarlayınız.*/
    /*if(trigger.isBefore && trigger.isInsert){
        for(Contact eachCon : trigger.new) {
            if(eachCon.Name == null) {
                system.debug('Bu record\'da First Name yazılmadı.. Name sadece Last Name = '+eachCon.lastName+' den oluşuyor.');
            }
        }
    }*/
    
    

//=================================================================================
    /*Assignment Question:
From the Contact Trigger print the following message whenever the lastName of an Contact is changed.
Message : Last Name  is changed - [OldLastName] is changed to [NewLastName]*/

    /*if(trigger.isBefore && trigger.isUpdate){
        for(contact cnt : trigger.new){
            if(trigger.oldMap.get(cnt.id).lastName != cnt.LastName){
                System.debug('Last name is changed - ' + trigger.oldMap.get(cnt.id).lastName + 'is changed to ' + cnt.LastName);
            }
        }
    }*/



//===============================================================================
 /*Assignment:
Write a Trigger on Contact object, Print the values of Trigger.New, Trigger.Old, Trigger.NewMap and Trigger.OldMap for the following trigger events:
After Insert
After Update
Before Insert
Before Update*/   
    /*if(trigger.isBefore){
        if (Trigger.isInsert) {
            system.debug('---------BEFORE INSERT------------');
            system.debug('trigger new  before Insert = ' + trigger.new);
            system.debug('trigger old  before Insert = ' + trigger.old);
            system.debug('trigger newMap  before Insert = ' + trigger.newMap);
            system.debug('trigger oldMap  before Insert = ' + trigger.oldMap);
        }  
    

        if (Trigger.isUpdate) {
            system.debug('---------BEFORE UPDATE------------');
            system.debug('trigger new before Update = ' + trigger.new);
            system.debug('trigger old before Update = ' + trigger.old);
            system.debug('trigger newMap before Update = ' + trigger.newMap);
            system.debug('trigger oldMap before Update = ' + trigger.oldMap);
        }    
    }
    if(Trigger.isAfter){
        if (Trigger.isInsert) {
            system.debug('---------AFTER INSERT------------');
            system.debug('trigger new before Insert = ' + trigger.new);
            system.debug('trigger old before Insert = ' + trigger.old);
            system.debug('trigger newMap before Insert = ' + trigger.newMap);
            system.debug('trigger oldMap before Insert = ' + trigger.oldMap);    
        }
    
        if (Trigger.isUpdate) { 
            system.debug('---------AFTER UPDATE------------');
            system.debug('trigger new before Update = ' + trigger.new);
            system.debug('trigger old before Update = ' + trigger.old);
            system.debug('trigger newMap before Update = ' + trigger.newMap);
            system.debug('trigger oldMap before Update = ' + trigger.oldMap);
        }
    }*/
    
    
  //==============================================================================  
    //Last name değişirse/güncellenirse(Update) Description da 'Contactın name değişti' yazsın.
    //version1
    /*if(trigger.isBefore && trigger.isUpdate){
        for(contact cn : trigger.new){
            if(cn.lastName != trigger.oldMap.get(cn.id).lastName){ //isimler değişmişse
                //Description da 'Contactın name değişti' yazacak
                cn.Description = 'Contactın name değişti';
            } else {
                cn.Description = '';
            }     
        }
    }

        // version 2
        if(trigger.isBefore && trigger.isUpdate){
            for(contact cn : trigger.new){
                contact oldCn = trigger.oldMap.get(cn.id);
                if(cn.lastName != oldCn.lastName){ //isimler değişmişse
                    //Description da 'Contactın name değişti' yazacak
                    cn.Description = 'Contactın name değişti';
                } else {
                    cn.Description = '';
                }     
            }
        }*/
  

    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if (trigger.isAfter && trigger.isInsert) {
        System.debug('Contact insert islemi yapildi...');
    }*/
    //==================================================
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if (trigger.isBefore) {
        System.debug('We are in BEFORE trigger');
        if (trigger.isInsert){
            System.debug('Before insert trigger called');
        }
       if (trigger.isUpdate) {
           System.debug('Before update trigger called.');
       }
    }
    if (trigger.isAfter) {
        System.debug('We are in AFTER trigger');
        if (trigger.isInsert){
            System.debug('AFTER insert trigger called');
        }
       if (trigger.isUpdate) {
           System.debug('AFTER update trigger called.');
       }
    }*/
   
