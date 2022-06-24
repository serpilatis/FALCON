public with sharing class TurkishCat {
    public string name;
    public string colorName;
    public integer age;

    public TurkishCat(){
        System.debug('yeni bir obje olustu');
    }
    public TurkishCat(string nm, string cnm, integer ag) {
        this.name = nm;
        this.colorName = cnm;
        this.age = ag;
        
    }
}