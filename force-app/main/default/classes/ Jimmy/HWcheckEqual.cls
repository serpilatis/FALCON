public class HWcheckEqual {
    public void checkEqual(){
        String test1 = 'My favorite part is apex ';
        system.debug(test1);

        String test2 = 'MY FAVORITE PART IS APEX';
        system.debug(test2);

        Boolean checkEqual = test1.equals(test2);
        system.debug('Is test1 equal to test2 ' + checkEqual);
    }

    
}
