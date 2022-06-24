public  class ValidateAddress {
   public void validateHomeAddress(){

    String houseName = 'Inci';
    String streetName = 'Parker';
    String cityName = 'Plano';
    String stateName = 'Dallas';
    String stateISOCode = '12b345';
    String countryName = 'United States';
    String countryISOCode = '543c21';

    system.debug('Number of characters in the street name ' + houseName.length());
    system.debug('Check if the street name contains house name in it or not ' + streetName.contains(houseName));
    system.debug('Find if the street name contains the state iso code in it ' + streetName.contains(stateISOCode));
    system.debug('Convert the state iso code ' + stateISOCode.toUpperCase() );
    system.debug(' Country iso code ' + countryISOCode.toLowerCase());
    system.debug('Country name ' + countryName.toUpperCase());
    system.debug('City name ' + cityName.toLowerCase());
    system.debug('State name ' + stateName.toLowerCase());

    String concat = houseName + ' ' + stateName;
    system.debug('My full address is ' + concat);
   }

    
}