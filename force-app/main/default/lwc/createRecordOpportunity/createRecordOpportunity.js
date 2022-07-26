import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import { createRecord } from 'lightning/uiRecordApi';

export default class CreateRecordOpportunity extends LightningElement {

    StageNameOptions;
        selectedStage;
        formdata={};
    
    changeHandler(event){
        const {name, value} = event.target;
        this.fields[name] =value;
        this.selectedStage = event.target.value;

    }

    get StageNameOptions(){
        return [
            {label: "Prospecting", value: "Prospecting"},
            {label: "Qualification", value: "Qualification"},
            {label: "Needs Analysis", value: "Needs Analysis"},
            {label: "Value proposition", value: "Value proposition"},
            {label: "Id.Decision Makers", value: "Id.Decision Makers"},
            {label: "Perception Analysis", value: "Perception Analysis"},
            {label: "Proposal/Price Quote", value: "ProsProposal/Price Quotepecting"},
            {label: "Negotiation/Review", value: "Negotiation/Review"},
            {label: "Closed Won", value: "Closed Won"},
            {label: "Closed Lost", value: "Closed Lost"},
        ];
    }

    createOpportunity(){
        const recordInput = {apiName: OPPORTUNITY_OBJECT.apiName, fields: this.formdata};

        createRecord(recordInput)

        .then(result => {
            console.log(result);
            this.displayToast(
                title="Success",
                variant="success",
                message="Your opportunity saved has been saved successfully!"
            )
            this.template.querySelector('form.opportunity').reset();
            this.formdata={};
        })
        .catch(error => {
            console.error(error);
            this.displayToast(
                title="Error",
                variant="error",
                message="Error. Something went wrong!"
            )    
        })
    }

    displayToast(title, message, variant){
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }   
}
