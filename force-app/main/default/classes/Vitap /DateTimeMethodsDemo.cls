public  class DateTimeMethodsDemo {
    //1. Create one method calculateAgeInMonths
    public void calculateAgeInMonths(){
        system.debug('calculate age in months');
        date birthDate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths = birthDate.monthsBetween(todaydate);
        system.debug('his age in months is ' + ageInMonths);
    }
    public void calculateAgeInDays(){
        system.debug('calculate age in days');
        date birthDate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths = birthDate.daysBetween(todaydate);
        system.debug('his age in days is ' + ageInMonths);
    }
    public void printSubcriptionEndDate(){
    date subcriptionStartDate = date.today();

    date subcriptionEndDate = subcriptionStartDate.addDays(1000);
    system.debug('subcription end date ' + subcriptionendDate);

    integer endDateYear = subcriptionEndDate.year();
    Integer endDateMonth = subcriptionEndDate.month();

    system.debug('subs end date year is = ' + endDateYear);
    system.debug('subs end date month is = ' + endDateMonth);

}

    public void printOfferEndDateTime(){
       datetime dtNow = datetime.now();
       
       datetime dtOfferEnd = dtNow.addHours(51);
       system.debug('offer will end on: ' + dtOfferEnd);

       date offerEndDate = dtOfferEnd.date();
       system.debug('offer end date is ' + offerEndDate);
    }
}