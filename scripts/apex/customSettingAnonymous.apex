Map<string, CountryCode__c> mapCC =  CountryCode__c.getAll();
system.debug('map of country code =' + mapCC);
for(string eachCountry : mapCC.keySet()){
    system.debug('Country = ' + eachCountry + ', code = ' +mapCC.get(eachCountry).	CountryISOCode__c);
}