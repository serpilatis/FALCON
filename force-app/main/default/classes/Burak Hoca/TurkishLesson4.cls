public with sharing class TurkishLesson4 {
    public TurkishLesson4() {
        System.debug('yeni bir obje olustu.');
    }

    public static void metod1(integer num1, integer num2){
        integer sum = 0;//1 den 10 a kadar sayilarin toplami
        integer counter = 0;//for kac defa donuyor.
        List<Integer> intList = new List<Integer>();
        for (Integer i = num1; i <= num2; i++){
            counter++;
            //counter  = counter + 1;
            sum += i;
            intList.add(i);
            //sum = sum + i;
            //System.debug(i);
            //System.debug('counter => ' + counter);
            //System.debug('sum => ' + sum);
        }
        System.debug('toplam sayi adedi => ' + counter);
        System.debug('sayilarin toplami sum +> ' + sum);
        System.debug(intList);
        integer ort = sum/counter;
        System.debug(intList + ' sayilarinin Aritmetik ortalamasi = ' + ort);
    }
    public static void listMetot() {
        //List<String> stringList = new List<String>{'Ahmet', 'Ayse', 'Ayla', 'Ahmet'};
        List<String> stringList = new List<String>();
        stringList.add('Ahmet');
        stringList.add('Ayse');
        stringList.add('Ayla');
        stringList.add('Ahmet');
        //System.debug('Listenin elemanlari => ' + stringList);
        //System.debug('Listenin ilk elemani => ' + stringList[0]);
        //System.debug('Listenin ilk elemani get ile => ' + stringList.get(0));
        for (string isim : stringList) {
            System.debug(isim);
        }
    }
    // bir integer liste olusturun. bu listeye 5 sayi ekleyin. bu sayinin toplamini bulun.
    public static void sumList(){
        List<Integer> list1 = new List<Integer>{11, 7, 22, 5, 3};
        //List<Integer> list1 = new List<Integer>();
        //list1.add(11);
        //list1.add(7);
        //list1.add(22);
        //list1.add(5);
        //list1.add(3);
        integer toplam = 0;
        for (integer eleman : list1) {
            System.debug('===== for donusu =====');
            System.debug('eleman = ' +eleman);
            toplam += eleman;
            System.debug('toplam = ' + toplam);
        }
    }
}
