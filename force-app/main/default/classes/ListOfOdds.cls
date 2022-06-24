public  class ListOfOdds {
    public ListOfOdds(){
        system.debug('Welcome.');
    }
    public static void oddNum(integer num) {
        List<Integer> oddNumList = new List<Integer>();
        for (integer i = 1; i <= num; i+=2){
            oddNumList.add(i); 
        }
        System.debug('Enter the number ==> ' + num);
        System.debug('List will have => ' + oddNumList);
    }
}