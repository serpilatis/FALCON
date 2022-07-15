import { api, LightningElement } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';


export default class LigtningRecordEditFormOpportunity extends LightningElement {
    //recordId = "0065f0000092EZGAA2";
    @api recordId;
    objectName = OPPORTUNITY_OBJECT;

    fields={
        OpportunityName: NAME_FIELD,
        StageName: STAGE_FIELD,
        Type: TYPE_FIELD,
        Amount: AMOUNT_FIELD,
        AccountName: ACCOUNT_FIELD,
        Closedate: CLOSEDATE_FIELD
    }

    successHandler() {
        const successEvent = new ShowToastEvent({
            title: "Success",
            message: "opportunity record has been  saved successfully",
            variant: "success"
        });
        this.dispatchEvent(successEvent);
    }
}