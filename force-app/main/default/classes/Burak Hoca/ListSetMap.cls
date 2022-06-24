public class ListSetMap {
    public static void practiceOne(){
        List<string> cityList = new List<string>{
            'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo' };
            System.debug('Liste = ' + cityList);
            System.debug('Listenin boyutu = ' + cityList.size());
            System.debug('Liste bos mu? ' + cityList.isEmpty());
            System.debug('Listenin 7. elemani = ' + cityList[6]);
            Set<string> citySet = new Set<string>();
            citySet.addAll(cityList);
            System.debug(citySet);
    }
    public static void practiceTwo(List<integer> listInteger){
        Set<Integer> tekSayilar = new Set<Integer>();
        Set<Integer> ciftSayilar = new Set<Integer>();
        for(integer a:listInteger ){
            if (Math.mod(a, 2)==0){
                ciftSayilar.add(a);
                
            } else {
              tekSayilar.add(a);  
            }
        }
        System.debug('Cift Sayilar Seti = ' + ciftSayilar);
        System.debug('Tek Sayilar Seti = ' + tekSayilar);
    }
  
}