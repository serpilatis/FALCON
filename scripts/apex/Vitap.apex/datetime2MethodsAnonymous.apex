DateTimeMethodsDemo2 dtm = new DateTimeMethodsDemo2();
date newDate = date.today();
boolean newDateLYcheck = dtm.leapYearCheck(newDate);
system.debug(newDateLYcheck);

boolean lpCheck1 = dtm.leapYearCheck(date.today());
system.debug('leap year check 1 ' + lpCheck1);
date dt1 = date.newInstance(2020, 01, 01);
boolean lpCheck2 = dtm.leapYearCheck(dt1);
system.debug('leap year check 2 ' + lpCheck2);