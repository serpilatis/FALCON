@isTest

public  class SPTriggerHandlerTest {
    @isTest
    private static void testMethod1(){
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Teach async to FALCONS';
        sp.description__c = 'All 40% are great learners, still';

        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.Project_Name__c = 'Teach future to FALCONS';
        sp1.description__c = 'All 40% are great learners, still';

        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp, sp1};
        insert lstSP;

        set<id> spIds = new set<id> {sp.id, sp1.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
    }
}
