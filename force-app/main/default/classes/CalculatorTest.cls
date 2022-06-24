@isTest
public  class CalculatorTest {
    @isTest
    private static void testMessage(){
        Calculator.welcomeMessage();

        Calculator.printNewMessage2('A', date.today());
        Calculator.printNewMessage('message m test class');
    }

    @isTest
    private static void addTest(){
        integer i = 10;
        integer j = 15;
        integer callAdd = Calculator.add(i,j);
        system.assertEquals(25, callAdd);

    }
    @isTest
    private static void addTest2(){
        integer calcAdd = Calculator.add(10,15,20);
        //AssertEquals(expected, actual) COMPARISON
         system.assertEquals(45,calcAdd); //(we are checking if it isi doing what it is suppose to do )
    }
    //@isTest
    // private static void addList() {
    //     List<Integer> numList = new List<Integer> {10,25,30,40};
    //     integer calcAdd = Calculator.add(numList);
    //     system.assertEquals(105, calcAdd);
    //}
    @isTest
    public static void addTest3(){
        list<integer> listInt = new list<integer>{15,15,15};
        integer calcAdd = Calculator.add(listInt);
        system.assertEquals(45, calcAdd);
    }
}