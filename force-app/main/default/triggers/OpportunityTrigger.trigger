trigger OpportunityTrigger on Opportunity (before insert,before update, after insert, after update) {
    if(trigger.isbefore && trigger.isUpdate){
        OpportunityTriggerHandler.OpportunityCloseDate(Trigger.New, 
                                                       Trigger.Old, 
                                                       Trigger.NewMap, 
                                                       Trigger.OldMap);
    }
  
  
  
  
  
  
  
  
 //================================================================================== 
    // 28. Bir Opportunity update edildiğinde description bölümünü aşağıda 
  //görülen şekilde düzenleyen bir trigger tasarlayınız.
//amount ve stage degistiginde
//stage degistiginde
//amount degistiginde
//amount ve stage degismediginde
/*if(trigger.isBefore && trigger.isUpdate){
    for(opportunity opp : trigger.new){
        opportunity oldOpp = trigger.oldMap.get(opp.Id);
        if(opp.amount != trigger.oldMap.get(opp.Id).amount && opp.stageName!=oldOpp.stageName){
            opp.Description = 'amount and stage have changed: new amount is=' + opp.amount +' old amount is =' + oldOpp.amount + 'new stage is= ' + opp.stageName + 'old stage is = ' + oldOpp.stageName;
        }
        else if(opp.stageName != oldOpp.stageName){
            opp.Description = 'stage has changed new stage is = ' +opp.stageName + 'old stage is ' + oldOpp.stageName;
        }
        else if(opp.amount != oldOpp.amount){
            opp.Description = 'amount has changed: new amount is=' + opp.amount + ' old amount is =' + oldopp.amount;
        }
        else if(opp.amount == oldOpp.amount && opp.stageName == oldOpp.stageName){
            opp.Description = 'amount and stage have not updated';
        }
    }
}*/

}