TurkishLesson2 t = new TurkishLesson2();
t.variableDefine();
t.text = 'Salesforce\'u ogrendim..';
system.debug('t objesi => ' + t);

TurkishLesson2 s = new TurkishLesson2();
s.variableDefine();
system.debug('s objesi => ' + s);
s.privateMethod();

TurkishLesson2 t2 = new TurkishLesson2();
t2.welcome(' Marry ');
t2.welcome(' Ali ' );
t2.welcome(' Fatma ');

TurkishLesson2 t3 = new TurkishLesson2();
t3.welcome(' Esma ');

TurkishLesson2 t4 = new TurkishLesson2();
string msg = t4.stringMethod('Hello World');
system.debug(msg + ' apex');

TurkishLesson2 t4 = new TurkishLesson2();
integer lng = t4.stringMethod1('Hello World');
system.debug(lng);

TurkishLesson2 t5 = new TurkishLesson2();
//decimal tplm = t5.price('Hayvan Ciftligi', 22.35, 5);
decimal tplm1 = t5.price('Hayvan Ciftligi', 22.35, 5);
Decimal tplm2 = t5.price('Suc ve Ceza', 27.40, 7);
Decimal tplm = tplm1 + tplm2; 
system.debug('toplam odeyeceginiz ucret = ' + tplm);
