@isTest 
public  class LeadTriggerHandlerTest {
    //Turkce ODEV
    @isTest 
    public static void updateDefaultLeadDetails(){
        List<Lead> listLead = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            if(i<100){
            Lead l1 = new Lead();
            l1.LastName = 'Yildiz' +i;
            l1.company = 'ABC';
            l1.leadSource = 'Web';
            listLead.add(l1);
            }
            else {
            Lead l2 = new Lead();
            l2.LastName = 'Yildiz';
            l2.company = 'ABC';
            l2.leadSource = 'Other';
            listLead.add(l2);
            }   
        } 
        insert listLead;
        test.startTest();
        LeadTriggerHandler.updateDefaultLeadDetails(listLead);
        test.stopTest();      
    }      
}
    

