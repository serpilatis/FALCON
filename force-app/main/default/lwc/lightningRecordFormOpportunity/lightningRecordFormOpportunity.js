import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNTID_FIELD from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';



export default class LightningRecordFormOpportunity extends LightningElement {
    recordId = "0065f0000092EZGAA2";
    objectName = OPPORTUNITY_OBJECT;
    fields=[NAME_FIELD, ACCOUNTID_FIELD, TYPE_FIELD, STAGENAME_FIELD, AMOUNT_FIELD, LEADSOURCE_FIELD];

    successHandler() {
        const successEvent = new ShowToastEvent({
            title:"Success",
            message:"The opportunity record has been saved successfully!",
            variant: "success"
        })
        this.dispatchEvent(successEvent);
    }

    erroeHandler() {
        const errorEvent = new ShowToastEvent({
            title:"Error",
            message:"An error occurred while saving opportunity record!",
            variant: "error"
        })
        this.dispatchEvent(errorEvent);
    }
}
