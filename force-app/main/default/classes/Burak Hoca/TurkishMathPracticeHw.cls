public  class TurkishMathPracticeHw {
    public decimal practiceOne(decimal x, decimal y){
        decimal cevre = 2 * (x + y);
        return cevre;
    }

    public decimal practiceTwo(decimal x, decimal y){
        system.debug('Birinci Parametre: ' + x);
        system.debug('Ikinci Parametre: ' + y);
        decimal VKI = x / (y * y);
        return VKI; 
    }

    public decimal practiceThree(integer x, integer y){
        system.debug('Birinci Parametre: ' + x);
        system.debug('Ikinci Parametre: ' + y);
        decimal ortXY = (x + y) / 2.0;
        return ortXY;
    }

    public decimal practiceFour(decimal amount){
        if (amount <= 0) {
            System.debug('Hatali bir deger girdiniz.');
        } else if (amount <= 49) {
            System.debug('Bonus kazanamadiniz.');
        } else if (amount <= 199) {
            Integer bonus = 10;
            System.debug(amount + '100$ tutarindaki alisveris karsiligi ' + bonus + '$ tutarinda bonus kazandiniz.');
        } else if (amount <= 499) {
            Integer bonus = 30;
            System.debug(amount + '300$ tutarindaki alisveris karsiligi ' + bonus + '$ tutarinda bonus kazndiniz.');
        } else {
            Integer bonus = 50;
            System.debug(amount + '750$ tutarindaki alisveris karsiligi ' + bonus +'$ tutarinda bonus kazandiniz.');
        }
        return amount;
            
        }

        public decimal practiceFive(String urun, Integer adet){
            Integer fiyat;
            switch on urun {
                when 'ekmek' {
                    fiyat = 1 * adet;   
                }
                when 'simit' {
                    fiyat = 2 * adet;
                }
                when 'kek' {
                    fiyat = 3 * adet;
                }
                when else {
                    fiyat = 0;
                }
               
            }
            System.debug('1. Parametere: ' + fiyat + '- 2. Parametre: ' + urun );
            return fiyat;
            
        }
        public decimal practiceFive2(String urun, Integer adet){
            Integer fiyat;
            if (urun == 'ekmek') {
                fiyat = 1 * adet;                
            } else if(urun == 'simit'){
                fiyat = 2 * adet;                
            } else if(urun == 'kek'){
                fiyat = 3 * adet;
            }
            System.debug('1. Parametere: ' + fiyat + '- 2. Parametre: ' + urun );
            return fiyat;

    }
    
    public decimal practiceSix(decimal x, decimal y, String islem){
        decimal result;
        if(islem == 'cevre') {
            result = Math.roundToLong(2*(x + y));
            system.debug('Dikdortgenin cevresi = ' + result);
        } else if (islem == 'alan') {
            result = Math.roundToLong(x * y);
            system.debug('Dikdortgenin alani = ' + result);
        } else {
            system.debug('Yanlis deger girdiniz lutfen kontrol ediniz.');
        }
        return result;
    }

    public string practiceSeven(decimal boy, decimal kilo) {
        string result = ' ';
        decimal vki = kilo/boy.pow(2);
        decimal setScaled = vki.setScale(1);
        system.debug('Debug ekrani:' + setScaled);
        if(setScaled>=18.4){
            result = 'Zayif';
            system.debug(result);
        } else if (setScaled>=18.5 && setScaled<=24.5){
            result = 'Normal';
            system.debug(result);
        } else if (setScaled>=25 && setScaled<=29.9){
            result = 'Kilolu';
            system.debug(result);
        } else {
            system.debug('Lütfen girmiş olduğunuz boy ve kilo değerlerini kontrol ediniz!');
        }
        return result;    
    }

    public integer practiceEight(integer a, integer b){
        integer sum = 0;
        if (a<b) {
            for(integer i = a; i<=b; i++){
                sum+=i;
            }
            system.debug(sum);   
        } else if (a>b) {
            for(integer i = a; i>=b; i--){
                sum+=i;
            }
            System.debug(sum);
        } else {
            sum = a + b;
            System.debug(sum);
        }
        return sum;
    }
}