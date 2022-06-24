public  class PlayingWithDates {
    public void printDateOutput(){
     Date todaysDate = Date.today(); 
     Date instance1 = Date.newInstance(2789, 11, 5);
     Date instance2 = Date.newInstance(1459, 3, 4);
     Integer year = 2000;
     Integer month = 5;
     Integer day = 3;
     Date instance3 = Date.newInstance(year, month, day);
     system.debug( 'Today date is ' + todaysDate);
     system.debug('Date for November ' + instance1);
     system.debug('Date for March ' + instance2);
     system.debug('Date for intance3 ' + instance3);


    }
   

    
}