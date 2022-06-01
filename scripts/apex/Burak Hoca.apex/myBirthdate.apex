date myBirthdate = date.newInstance(2012, 8, 23);
system.debug('My birthday date: ' + myBirthdate);

integer day = myBirthdate.day();
integer month = myBirthdate.month();
integer year = myBirthdate.year();
integer sum = day + month + year;
system.debug('day + month + year ' + sum);

