public  class Calculator {
    public static void welcomeMessage(){
        system.debug('welcome to apex calc');
       
    }
    //method name: printNewMessage
    //# of parameter: 1
    //data type of parameter: string
    //return type void

    public static void printNewMessage(string msg){
        //use parameter variable name inside the method
        system.debug(msg);
    }

    public static void printNewMessage2(string msg, Date dt){
        system.debug(msg);
        system.debug(dt);
    }

    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    //add method with 3 parameters
    public static integer add(integer a, integer b, integer c){
        return a+b+c;
    }
    // valid?--1 ---> ANS
    //public static integer add(string a, string b){
        //add length of two string and return it.
        //return 1;
    //}
    // valid?--2
    //public static void add(string a, integer b){

    //}
    public static integer add(list<integer> intList){
        integer sum = 0;
        //10,15,20
        //sum = sum + 10;
        //sum = sum + 15;
        //sum = sum + 20;

        for (integer eachInt : intList){
            system.debug('eachInt - ' + eachInt);
            sum += eachInt;
            system.debug('sum...' + sum);
        }
        return sum;
    }    
}
