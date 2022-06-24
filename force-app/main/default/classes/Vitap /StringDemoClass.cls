//create a class
public class StringDemoClass {
    //create a method
    public void stringMethod1(){
        //method variable
        string sessionDescription = 'learning string\'s methods in apex languaage.';

        //1. length
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is = ' + lengthOfStr);

        //2 upper case
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);
    

        //3. contains 'apex'
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex? ' + containsApex);

        //3.b. containsIgnoreCase 'APEX'
        boolean containsApex2 = sessionDescriptionInCaps.containsIgnoreCase('apex');
        //false -> true
        system.debug('has apex2? ' + containsApex2);
        //3.a. check salesforce
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce? ' + containsSalesforce);



    }

}