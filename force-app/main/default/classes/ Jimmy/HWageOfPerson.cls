public  class HWageOfPerson {
    public void calculateAge(){
        Date birthdate = date.newInstance(2002, 4, 16);
        Date today = Date.today();

        Integer ageInDays = birthdate.daysBetween(today);
        system.debug('Age in days ' + AgeInDays);

        Integer ageInMonths = birthdate.monthsBetween(today);
        system.debug('Age in months ' + ageInMonths);

        Integer ageInYears = ageInMonths/12;
        system.debug('Age in years ' + ageInYears);
    }
 //write an apex script yo show the total number of days remaining for the expiration of the plan

    public void remainingDays(){
        Date startDate = Date.today();
        Date expDate = Date.newInstance(2023, 4, 12);

        integer remainingDate = startDate.daysBetween(expDate);
        system.debug('Remaining date of finish school: ' + remainingDate + ' ' + 'Days');

    }
   
}