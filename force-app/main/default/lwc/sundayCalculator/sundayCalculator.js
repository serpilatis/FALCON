import { LightningElement } from 'lwc';

export default class SundayCalculator extends LightningElement {
    firstNumber=0;
    secondNumber=0;
     firstNumHandler(event){
        this.firstNumber=event.target.value;
    }
    secondNumHandler(event){
        this.secondNumber=event.target.value;
    }
    get sum(){
      return  Number (this.firstNumber) + Number (this.secondNumber);
    }

}