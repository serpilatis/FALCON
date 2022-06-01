trigger LeadTrigger on Lead (before insert) {
    //Turkce ODEV
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LeadTriggerHandler.updateDefaultLeadDetails(Trigger.New);
        }
    }

}