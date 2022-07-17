import { LightningElement } from 'lwc';

export default class SundayTwoWaysDataBinding extends LightningElement {

    userName;
    role;
    nameHandler(event) {
        this.userName=event.target.value;
    }
    roleHandler(event){
        this.role=event.taeget.value;
    }
    get roleTypes(){
        return [
            {label: "Salesforce Admin", value: "Salesforce Admin"},
            {label: "Salesforce Developer", value: "Salesforce Developer"},
            {label: "Salesforce Architect", value: "Salesforce Architect"}
        ];    
    }
}