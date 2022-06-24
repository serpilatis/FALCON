public  class TurkishLesson1 {
    /* 1. Class create apex class ile acilir. new file degil...
       2. Clasi duzenle
       3. metodu yazma
       4. metodun icine kodlari yazma
       5. save islemi
       6. deploy islemi(deploy kodlarimi orga gonderiyor
       developer consolda classin gorunmesini sagliyor.)ama calisma olmuyor.
       7. apex dosyamizda class ve metodu cagiracagiz.
       7.1 metodumuz static degilse classtan obje turetecegiz ve obje ile metodu cagiracagiz.
       8. execute islemi
    */
    public void genelIslemler(){
        System.debug('Derse hosgeldiniz..');
        string str = 'Salesforce ogreniyoum..';
        system.debug(str);

        integer Nmbr = 10;
        System.debug(Nmbr);
        Nmbr = 15;
        System.debug(Nmbr);

        integer a = 45;
        integer b = 5;
        integer c = a + b;
        integer d = a/b;
        system.debug('a sayisi = ' + a + ' b sayisi = ' + b);
        system.debug('c sayisi = ' + c + ' d sayisi = ' + d);

    }
    public void stringMetodlar(){
        String s = 'hello maximillion';
        String s2 = s.capitalize();
        System.debug(s2);

        String myString1 = 'abcde';
        String myString2 = 'abcd';
        Boolean result = myString1.contains(myString2);
        System.debug('myString1 in icinde  myString2 var mi => ' + result);
        string str  = 'Bugün hava çok güzel ama esas olan sizin havaniz';
        integer karaktersy = str.length();
        System.debug('str nin karakter sayisi => ' + karaktersy);

        string str2 = str.deleteWhitespace();
        integer karaktersy2 = str2.length();
        System.debug('str2 nin karakter sayisi => ' + karaktersy2);

        String st1 = 'Salesforce and force.com';
        String st2 = st1.remove('force');
        System.debug('remove metodu ile => ' + st2);
        System.debug(st2.toUpperCase());
        System.debug(st2.toLowerCase());
   }

   public void dateMetotlari(){
    date myDate = date.today();
    System.debug('bugünün tarihi => ' + myDate);
    System.debug('bugünden 10 gün sonrasi => ' + myDate.addDays(10));
    System.debug('bugünden 11 ay sonrasi => ' + myDate.addMonths(11));
    System.debug('bugünden 50 yil öncesi => ' + myDate.addYears(-50));

    Datetime nowDate = Datetime.now();
    System.debug('bugünün zaman olarak tarihi => ' + nowDate);
    System.debug('şu andan 5 saat sonrasi => ' + nowDate.addHours(5));
        
    }
    
}