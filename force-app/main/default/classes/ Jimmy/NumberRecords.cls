public  class NumberRecords {
    public static void checkNumList(List<integer> listNumber, integer n){
        
        if (listNumber.contains(n)){
            system.debug(' '+ n + ' exists in that list.');
        } else {
            system.debug(' ' + n + ' does not exists in that list.');
        }   
    }
}