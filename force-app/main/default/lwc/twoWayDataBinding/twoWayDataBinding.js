import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullname = "Serpil";
    title = "Salesforce Developer";

    handleChange(event) {
        this.title = event.target.value;
    }
}