public  class ListDemo {
    //public static void candidatesList(){
        public static string candidatesList(integer indx){
        List<string>  listCandidates =  new  List<string>();
        listCandidates.add('Eric');//index0
        listCandidates.add('Sam');//index1
        listCandidates.add('Bill');//index2
        listCandidates.add('Eric');//index3
        system.debug('candidates are ' + listCandidates);
        //====================================================
        string retrnString = '';
        //retrnString = listCandidates[indx];
        //return retrnString;
        //==================================================
        //if (indx < listCandidates.size()) {
        if (indx >=0 && indx < listCandidates.size()) {
            retrnString = listCandidates[indx];
            
        } else {
            //retrnString = 'No such value found';
            retrnString = 'No Value Found';
        }
        return retrnString;

        //string valueAt3 = listCandidates[3];
        //system.debug('value at index 3 ' +valueAt3);
    }

    public static void randomIntegerList(){
        List<integer>  listInteger  =  new  List<integer>();
        listInteger.add(10); //index=0
        listInteger.add(15); //index=1
        listInteger.add(21); //index=2
        listInteger.add(15); //index=3
        listInteger.add(15); //index=4

        //get index 3 value.
        integer index3value = listInteger.get(3);
        //.get
        //[]
        Integer index3value2 = listInteger[3];

        system.debug('list of random integers = ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
       

    }
    public static void allCats(){
        cat falconsCat = new cat('fluffykins', 'white');
        cat vitapCat = new cat('Simba', 'brown');

        car lm = new car();

        List<cat> cats = new List<cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        System.debug('all cats are ' + cats);
        
    }

    public static void allCars(){
        Car lm = new car();
        lm.carColor = 'red';
        car bm = new car();
        bm.carColor = 'gray';

        list<car> cars = new list<car>();
        cars.add(lm);
        cars.add(bm);
        system.debug(cars);
    }
   
    public static void itareteIntegerList(){
        List<integer>  listInteger  =  new  List<integer>();
        listInteger.add(10); //index=0
        listInteger.add(15); //index=1
        listInteger.add(21); //index=2
        listInteger.add(15); //index=3
        listInteger.add(16); //index=4
        for (integer eachInteger : listInteger )
        System.debug(eachInteger);
    }
}