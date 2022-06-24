public  class TurkishLesson3 {
    public void welcome(){
        System.debug('Hosgeldiniz..');
    }
    public string firstName;
    public string lastname;
    public string className = 'new batch';
    private string courseName = 'softinnovas';

    public void newCourse(string cName){
        courseName = cName;
        System.debug(courseName);
    }

    //integer bir parametre yasi alsin. 18 yas ve daha buyukse ehliyet alabilir. 18 yasindan kucukse ehliyet alamaz..
    public string ehliyet(integer age){
        string msg = '';
        if (age < 18) {
            msg = 'Ehliyet alamaz...';
            
        }else {
            msg = 'Ehliyet alabilir...';
        }
        return msg;
    }

    public void ehliyet2(integer age){
        if (age < 18) {
        System.debug('Ehliyet alamaz..');
        } else {
            System.debug('Ehliyet alabilir..');
        }
   }
    //integer bir parametre alan bir metod. gelen sayinin 0'a esit, 0'dan buyuk veya 0' dan kucuk oldugunu bulsun mesaj versin.
    public void numberZero(integer x){
        if (x > 0) {
            System.debug(x + ' Sayiniz pozitif');
            
        }  else if (x < 0) {
            system.debug(x + ' Sayiniz negatif');

        } else {
            System.debug(x + ' Sayiniz 0');
        }
    }
        

}