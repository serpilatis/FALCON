TurkishLesson5.listMetod();
TurkishLesson5.catMetod();

//math methods
integer a = 15;
integer b = 21;

//2 sayidan buyuk olanini getiren metod;
integer bSayi = math.max(a,b);
System.debug('buyuk sayi = ' +bSayi);

//2 sayidan kucuk olanini getiren metod;
integer kSayi = math.min(a, b);
System.debug('kucuk sayi ' +kSayi);

decimal c = 23.63456;
//floor ondalik kismi siler;
decimal d = math.floor(c);
System.debug(' floor d = ' +d);

//roundToLong ondalik kismi yuvarlar;
Decimal e = math.roundToLong(c);
System.debug('round e = ' +e);

//Bilgisayar rastgele(random) 1 den 10 a kadar 1 sayi getirsin...
decimal randomNum = Math.floor(Math.random()*10 + 1);
//Decimal randomNum2 = Math.ceil(Math.random()*10);
System.debug(randomNum);
System.debug(randomNum2);
