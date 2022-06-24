public  class OpportunityCloseDate {
    
  /*Assignment Question for Today:
Validation - Close date can not be updated less than what is already present on the Opportunity record.
For example : An opportunity with close date as 5th August 2022 is there and If user tries to update the close date to 4th August 2022 or less than that then user should get an error as follows - 'Close Date can not be update to less that what already provided'.*/  
     
    public static void OppotunityClsDate(List<Opportunity> oppTriggerNew, List<Opportunity> oppTriggerOld, map<id,Opportunity> oppMapNew, Map<Id,Opportunity> oppMapOld ) {
        if (trigger.isBefore && trigger.isUpdate) {
            for (Opportunity eachOp : oppTriggerNew ) {
                //close date eger 5 ise eger verirsek
                if (eachOp.CloseDate < oppMapOld.get(eachOp.Id).CloseDate) {
                    eachOp.addError('Close Date can not be update to less that what already provided');
                    
                }
                
            }
            
        }
        
    } 
   
}