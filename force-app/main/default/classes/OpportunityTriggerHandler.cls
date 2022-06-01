/*Assignment:
Validation - Close date can not be updated less than what is already present on the Opportunity record.
For example : An opportunity with close date as 5th August 2022 is there and If user tries to update the close date to 4th August 2022 or less than that then user should get an error as follows - 'Close Date can not be update to less that what already provided'.*/
public  class OpportunityTriggerHandler {
    public static void OpportunityCloseDate(List<opportunity> oppTriggerNew,
                               List<opportunity> oppTriggerOld,
                               Map< Id,opportunity> oppTriggerNewMap,
                               Map< Id,opportunity> oppTriggerOldMap){
        for (Opportunity opp: oppTriggerNew){
            if(opp.closeDate < oppTriggerOldMap.get(opp.Id).closeDate){
                opp.closeDate.addError('Close Date can not be update to less that what already provided');
            }
        }
}

// Practice Question(Assignment)
// Note: Please Write a trigger for the object Opportunity Classes.  
// • Create a class with the following methods. 
// o Create one Account Record. 
// o Create a method which accepts Account ID as parameter and create few 
// opportunity records with name = ‘’ Prospecting” and few records with 
// Stage = ‘’ Qualification”. 
// o Create a Trigger for Opportunity object with handler class which updates 
// close date as Todays date with stage= ‘Opportunity
 
// • Write a Test class for the above code. 
// o Use Test.starttest 
// o Use an Assert statement with close date of opportunity object. 
// o Use Test.stoptest 
    public static void createAccount(id accId){
        account ac = new Account();
        acc.Name = ''


    }
}