public  class MyCity {

    public void stringMethod(){
        String sentence = ('I am a salesforce Developer');

    // a. 'force' kelimesi bulunup bulunmadığını* kontrol edin,
    Boolean isContainsForce =  sentence.contains('force');
    system.debug('sentence contains force ' + isContainsForce);

    //  b.kaç karakter olduğunu* hesaplayın,
    Integer lengthOfSentence = sentence.length();
    system.debug('The length of sentence ' + lengthOfSentence);

    // c. Tüm karakterleri büyük harfe* dönüştürün ve bunları System.debug yardımı ile görüntüleyin.

    String upperCaseSentence = sentence.toUpperCase(); 
    system.debug('sentence upperCase ' + upperCaseSentence);    
    }

    // 7- MyCity class'ına dateMethod adında yeni bir metod oluşturun. Bu Method içerisinde bugünün tarihini* tanımlayıp System.debug yardımı ile yazdırın.
    //Aynı method içerisinde ayrı bir variable'da şuanki tarih ve saati tanımlayın* ve 50 saat sonrasını* System.debug yardımı ile yazdırın 
    public void dateMethod(){
        date todaysDate = date.today();
        system.debug('Bugunun tarihi ' + todaysDate);
        Datetime todaysDateTime = DateTime.now();
        system.debug('Bugunun tarihi ve saati ' + todaysDateTime);
        Datetime todaysDateTimePlus50Hours = todaysDateTime.addHours(50);
        system.debug('50 saat sonrasi ' + todaysDateTimePlus50Hours);


    }

  public void cityInformation(){
      String ulke = 'England';
      String sehir = 'Londra';
      system.debug('Gezmek istedigim ulke --> ' + ulke + ' ' + 've sehir --> ' + sehir);

      date kurulus = date.newInstance(1776, 7, 4);
      system.debug('Amerika/nin kurulus tarihi: ' + kurulus);

      time gunDogumu = time.newInstance(6, 57, 00, 00);
      system.debug('Gun dogumu zamani: ' + gunDogumu);

      date newDate = date.today();
      system.debug('Bugunun tarihi: ' + newDate + ' ' + 've 36 ay oncesinin tarihi: ' + newDate.addMonths(-36));
  } 

   public string favoriteCafe = '';
   public string favoritePark = '';
   public string favoriteMall = '';
   public string favoriteStore = '';

   public string myFavariteLocations(string city){
       system.debug('The most beautiful cafe in my city: ' + favoriteCafe + ',' + 'most beautiful park: ' + favoritePark + ',' + 'most beautiful mall: '  +  favoriteMall + ',' + 'most beautiful store: ' + favoriteStore);

       return city;

   }
   public void printString(string message, integer times){
       for(integer i = 1; i <= times; i++){
           System.debug(message + ' ' + i);
       }
   }
}