public  class HWemployeeExperience {
    public void calculateExperience(){

        Date dateOfJoin = Date.newInstance(2013, 10, 11);
        system.debug('The employee started working on ' + dateOfJoin);
        Date today = Date.today();

        Integer daysBetween = dateOfJoin.daysBetween(today);
        system.debug('The employee has been ' +  daysBetween + ' ' + 'days.');
    }

    
}
