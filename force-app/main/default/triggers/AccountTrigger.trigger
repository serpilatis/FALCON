trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}









    /*if(trigger.isBefore && trigger.isInsert){
        AccountTriggerHandler.insertAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    if(trigger.isBefore && trigger.isUpdate){
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }*/
    
    
    














    
    
 //========================================================================   
    /*if(trigger.isBefore && trigger.isUpdate){
        for(account ac : trigger.new){
            if(ac.AnnualRevenue != trigger.oldMap.get(ac.id).AnnualRevenue){
                if(ac.AnnualRevenue > trigger.oldMap.get(ac.id).AnnualRevenue){
                    decimal fark = ac.AnnualRevenue - trigger.oldMap.get(ac.id).AnnualRevenue;
                    ac.Description = fark + ' Annual revenue arttı';
                } else {
                    decimal fark = trigger.oldMap.get(ac.id).AnnualRevenue - ac.AnnualRevenue;
                    ac.Description = fark + ' Annual revenue azaldı';
                }
            }
        }
    }*/
      
     
    //==================================================================
    /*if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('---------isInsert && isBefore START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isInsert && isBefore END------------');
        System.debug('                                    ');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        System.debug('                                    ');
        system.debug('---------isInsert && isAfter START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isInsert && isAfter END------------');
        System.debug('                                    ');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        System.debug('                                    ');
        system.debug('---------isUpdate && isBefore START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isUpdate && isBefore END------------');
        System.debug('                                    ');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        System.debug('                                    ');
        system.debug('---------isUpdate && isAfter START------------');
        system.debug('trigger new = ' + trigger.new);
        system.debug('trigger old = ' + trigger.old);
        system.debug('trigger new Map = ' + trigger.newMap);
        system.debug('trigger old Map = ' + trigger.oldMap);
        system.debug('---------isUpdate && isAfter END------------');
        System.debug('                                    ');
    }
    for(account ac : trigger.new){
        System.debug(ac.name);
        System.debug(ac.id);
    }
    for(id accId : trigger.newMap.keyset()){
        System.debug(trigger.newMap.get(accId));
        System.debug(trigger.oldMap.get(accId));
    }*/
    
    //==========================================================
    
    
    
    
    
    
    
    
    
    
    /*if(trigger.isBefore){
        System.debug('before insert/update trigger called');
        //map<id, account> newAccountMap = trigger.newmap;
        //map<id, account> oldAccountMap = trigger.oldmap;
        for(account eachAcc: trigger.new){
            boolean updateDesc =false;
            if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
                //eachAcc.Description = 'Account is now active.Enjoy!';
                updateDesc = true;
            }
            if(trigger.isUpdate){
                Account oldAccount = oldAccountMap.get(eachAcc.ID);
                string oldAccountActive = oldAccount.Active__c;
                //check if aktive is update
                //aktive is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                oldAccountActive != 'Yes'){
                    //eachAcc.Description = 'Account is now active.Enjoy!';
                    updateDesc = true;
                }
                
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active.Enjoy!';
            }    
        }   
        }*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if(trigger.isAfter && trigger.isUpdate){
        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        integer countWebsiteUpdate = 0;
        for(ID eachId :  setOfAccIds){
            //get old account
            account oldAcc = oldAccMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            //get new account
            account newAcc = newAccMap.get(eachId);
            string newWebsite = newAcc.Website;

            if(oldWebsite != newWebsite){
                //website is CHANGED
                System.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
                countWebsiteUpdate++;
            }
        }
        System.debug('# of account website updated = ' + countWebsiteUpdate);
    }*/



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*if(trigger.isAfter && trigger.isUpdate){
        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();

        for(ID eachId: setOfAccIds){
            System.debug('==============');
            System.debug('each id = ' + eachId);

            Account newAccount = newAccmap.get(eachId);
            System.debug('New account name = ' +newAccount.Name);

            Account oldAccount = oldAccmap.get(eachId);
            System.debug('Old account name = ' +oldAccount.Name);
        }
    }*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if(trigger.isBefore &&  trigger.isInsert){
        system.debug('=======BEFORE INSERT=========');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before insert NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isInsert){
        system.debug('=======AFTER INSERT=========');
        system.debug('AFter insert OLD MAP = ' + trgOldMap);
        system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    }

    if(trigger.isBefore &&  trigger.isUpdate){
        system.debug('=======BEFORE UPDATE=========');
        system.debug('Before update OLD MAP = ' + trgOldMap);
        system.debug('Before update NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isUpdate){
        system.debug('=======AFTER UPDATE=========');
        system.debug('AFter update OLD MAP = ' + trgOldMap);
        system.debug('AFter update NEW MAP = ' + trgNEWMap);
    } */
    
 //=======================================================================  
   
   
     /*if(trigger.isAfter){
        if(trigger.isUpdate){
            List<Account> oldAccounts = trigger.old;
            List<Account> newAccounts = trigger.new;
            for (account oldAcc : oldAccounts) {
                System.debug('old acc.id = ' + oldAcc.id + ' Old accname ' + oldAcc.name);
                
            }
            for (account newAcc : newAccounts) {
             System.debug('new acc.id = ' + newAcc.id + ' New accname ' + newAcc.name);
             
         }
        } 
     }*/
    
 //========================================================================   
    /*if(trigger.isBefore && trigger.isInsert){
        System.debug('trigger.old before insert = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        System.debug('trigger.old after insert = ' + trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('trigger.old before update = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('trigger.old after update = ' + trigger.old);
    }*/

//===========================================================================


    /*if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update = ' + trigger.new);
        list<account> newAccounts = trigger.new;
        for (account acc :  newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after update = ' + trigger.new);
        for (account acc :  trigger.new) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }

    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }*/
//==============================================================================

    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/
//===============================================================================

    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    
   //======================================================================== 
    

    
    /*if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }*/
//=============================================================================

    
    /*if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }
   
   
   
   
   
   
   
   
   
   
    /* if (trigger.isBefore && trigger.isInsert) {
        System.debug('before insert durumunda trigger new => ' + trigger.new);
    }
    
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After insert durumunda trigger new => ' + trigger.new);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before update durumunda trigger new => ' + trigger.new);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After insertupdate durumunda trigger new => ' + trigger.new);
    }*/

    
    
    
    
    
    
    
    
    
    
    
    //if (trigger.isAfter && trigger.isInsert) {
    //    System.debug('Account insert islemi yapildi..');
    //}
    
   //=======================================================================   
    
    
    /*if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('---------isInsert && isBefore START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isInsert && isBefore END------------');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('---------isInsert && isAfter START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isInsert && isAfter END------------');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('---------isUpdate && isBefore START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isUpdate && isBefore END------------');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('---------isUpdate && isAfter START------------');
        system.debug('trigger.isBefore = ' + trigger.isBefore);
        system.debug('trigger.isAfter = ' + trigger.isAfter);
        system.debug('trigger.isInsert = ' + trigger.isInsert);
        system.debug('trigger.isUpdate = ' + trigger.isUpdate);
        system.debug('---------isUpdate && isAfter END------------');
    }*/
 
   
 //=========================================================================  
   
   
    /*if (trigger.isInsert && trigger.isAfter) {
        System.debug('trigger.new afte insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        System.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            System.debug('account id is = ' + acc.Id + ',account name is ' + acc.Name);
        }
    }*/
    
  //=========================================================================  
    
    
    
    /*if (trigger.isAfter) {
        //trigger.new --> record(s) which were responsible for firing the trigger
        System.debug('trigger.new after insert/update = ' +trigger.new);
        
    }*/
//===========================================================================


     /*System.debug('========START==========');
    System.debug('trigger.isBefore = ' + trigger.isBefore);
    System.debug('trigger.isAfter = ' + trigger.isAfter);
    System.debug('trigger.isInsert = ' + trigger.isInsert);
    System.debug('trigger.isUpdate = ' + trigger.isUpdate);

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger fired');
    }
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (trigger.isUpdate && trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (trigger.isUpdate && trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');*/


//============================================================================


    /*System.debug('========START==========');
    System.debug('trigger.isBefore = ' + trigger.isBefore);
    System.debug('trigger.isAfter = ' + trigger.isAfter);
    System.debug('trigger.isInsert = ' + trigger.isInsert);
    System.debug('trigger.isUpdate = ' + trigger.isUpdate);

    if (Trigger.isInsert) {
        System.debug('before insert trigger fired');
    }
    if (Trigger.isUpdate) {
        System.debug('after insert trigger fired');*/
        
        //====================================================
    //trigger AccountTrigger on Account (before insert, before update)
    /*if (Trigger.isInsert) {
        System.debug('before insert account trigger fired');
    }
    if (Trigger.isUpdate) {
        System.debug('before update trigger called');*/
    
    //=======================================================
    //System.debug('before insert account trigger fired');
    //System.debug('before update trigger called');
    //=========================================================
    /*
    //WHEN WILL .ISBEFORE TRUE?
      System.debug('trigger.isBefore = ' + trigger.isBefore);
      System.debug('trigger.isAfter = ' + trigger.isAfter);

      //when will .isAfter TRUE?
  
      if(Trigger.isAfter){
        System.debug('after insert trigger called');
    }
    if(Trigger.isBefore){
        System.debug('before insert account trigger fired');   
    }
    System.debug('============================'); 
    */