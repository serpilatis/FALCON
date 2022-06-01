date today = date.today();
date marieCurieBirthday = date.newInstance(1867, 11, 7);
system.debug('Bugunun tarihi: ' + today + '... ' + 'Marie Curie nin dogum tarihi: ' + marieCurieBirthday);

integer ageInDays = marieCurieBirthday.daysBetween(today);
integer yearDifference = ageInDays/365;
system.debug('Farkin gun dikkate alinarak hesaplanmasi: ' + yearDifference);

integer ageInMonths = marieCurieBirthday.monthsBetween(today);
integer monthsDifference = ageInMonths/12;
system.debug('Farkin ay dikkate alinarak hesaplanmasi ' + monthsDifference);

integer year1 = 2022;
integer year2 = 1867;
system.debug('Farkin yil dikkate alinarak hesaplanmasi: ' + (year1 - year2));

Boolean leapYear = date.isLeapYear(1867);
system.debug('Marie Curie\'nin dogum tarihi artik yil mi: ' + leapYear);