public  class TurkishLesson5 {
    public static void listMetod(){
        List<String> dersList = new List<String>();
        System.debug('listemiz bosken' + dersList.isEmpty());
        dersList.add('Turkce');
        dersList.add('Fen Bilgisi');
        dersList.add('Tarih');
        System.debug(dersList);
        System.debug(dersList.get(1));
        System.debug(dersList[1]);
        System.debug(dersList.indexOf('Fen Bilgisi'));
        System.debug('listemiz dolu iken' + dersList.isEmpty());
        System.debug('listemiz dolu iken' + !dersList.isEmpty());
        System.debug('listenin eleman sayisi' + dersList.size());

        List<Integer> numList = new List<Integer>{23, 7, 4, 18};
        System.debug(numList);
        numList.sort();
        System.debug('sort metodu uygulaninca ' + numList);
        
    }
    public static void catMetod(){
        List<TurkishCat> turkishCatList = new List<TurkishCat>();
        TurkishCat c = new TurkishCat();
        c.name = 'Pamuk';
        c.colorName = 'Beyaz';
        c.age = 3;
        turkishCatList.add(c);

        TurkishCat c2 = new TurkishCat();
        c2.name = 'Pamuk';
        c2.colorName = 'Beyaz';
        c2.age = 3;
        turkishCatList.add(c2);

        TurkishCat c3 = new TurkishCat('Zeytin', 'Siyah', 1);
        turkishCatList.add(c3);

        TurkishCat c4 = new TurkishCat('Tarcin', 'Turuncu', 3);
        turkishCatList.add(c4);

        System.debug(turkishCatList);
    
    }
   
}
