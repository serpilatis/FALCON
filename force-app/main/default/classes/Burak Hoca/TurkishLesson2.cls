public  class TurkishLesson2 {
    // 1. save 2. deploye 3. apexte obje uretme 4. obje metodu cagirma
    public void variableDefine(){
        String name1 = 'John';
        Integer number1 = 11;
        Boolean isCheck = true;

        //system.debug('name: ' + name1);
        //system.debug('number: ' + number1);
        //system.debug('isCheck: ' + isCheck);

        system.debug('name: ' + name1 + ' number: ' + number1 + ' isCheck: ' + isCheck);
    }

    public String text = 'Ben Salesforce ogreniyorum..';
    private integer counter = 0;

    public void privateMethod(){
        system.debug('private counter : ' + counter);
        system.debug('text : ' + text);
    }

    public void welcome(string nm){
        counter++;
        // counter = counter + 1;
        system.debug(nm + ' ' + counter + '. ogrenci olarak hosgeldin..');
    }

    public string stringMethod(string str){
        //system.debug(str);
        return str;
    }

    public integer stringMethod1(string str){
        system.debug(str);
        return str.length();
    }

    public Decimal price(string kName, Decimal kFiyat, integer adet){
        Decimal total = kFiyat*adet;
        system.debug(kName + ' kitabindan ' + adet + ' adet aldiniz. odeyeceginiz ucret = ' + total);
        return total;
    }
}
