public class HWcheckHost {
    public void checkHost(){
        String sentence = 'Welcome to the Salesforce world, apex is host in this world.';

        Boolean isHostexist = sentence.contains('HOST');
        system.debug(isHostexist);

        Boolean isHostexist1 = sentence.containsIgnoreCase('HOST');
        system.debug(isHostexist1);


     }
    
    
}
