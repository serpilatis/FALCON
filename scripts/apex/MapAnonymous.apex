map<string, string> mapCntCurrency = new map<string, string>();
//USA----> Dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country currecy = ' + mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
system.debug('country is ' + country);
string TurkeyCurrency = mapCntCurrency.get(country);//valid?YES

system.debug('India Currency = ' + IndiaCurrency);
system.debug('Turkey Currency = ' + TurkeyCurrency);

//Set<string> countrySet = mapCntCurrency.keySet();
//system.debug('countries in map: ' + countrySet);

list<string> currencyList = mapCntCurrency.values();
system.debug('currencies in map:' + currencyList);

//map<integer, list<string>> mapOfIntList = new map<integer, list<string>>();//valid. yes
//mapOfIntList.values();
//1. List<String>
//2. list<list<string>>

Set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map: ' + countrySet);
//for loop

for(string eachKey: countrySet){
    //string printString = 'country is ' + eachKey;
    //system.debug(printString);

    string eachCurrency = mapCntCurrency.get(eachKey);
    system.debug(eachCurrency);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug(printString);
    
}
