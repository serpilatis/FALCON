/*Create an Apex class with a method that returns a list of formatted strings. The length of the list is determined by an integer parameter. You can also use an array if you prefer, but these instructions assumes you're using a list. 
The apex class must be celled StringArray and be in the public scope. 
The Apex class must have a public static method called ganerateStringarray.
The ganerateStringarray method must return a list of strings.
The method must accept an incoming Integer as a parameter, which will be used to determine the number of returned strings.
The method must return a list of strings. Each element in the list mast have the format Test n, where n is the index of the current string in the list. 
For example, if the input is 3, then the output should be (Test 0, Test 1, Test 2). Remember that in Apex, the Index position of the first element in a list is always 0.*/

public  class StringArray {
   public static list<string> ganerateStringarray(integer n){
       list<string> listTest = new list<string>();

       for (integer i = 0; i<n; i++){
        listTest.add('Test' +i);
       }
       System.debug(listTest);
       return listTest;
   }
 }
