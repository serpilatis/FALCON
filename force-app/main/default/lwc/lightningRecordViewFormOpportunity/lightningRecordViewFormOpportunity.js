import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import ACCOUNTID_FIELD from '@salesforce/schema/Opportunity.AccountId';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import LEADSOURCE_FIELD from '@salesforce/schema/Opportunity.LeadSource';


export default class LightningRecordViewFormOpportunity extends LightningElement {
    recordId = "0065f0000092EZGAA2";
    objectName = OPPORTUNITY_OBJECT;
    fields={
        name: NAME_FIELD,
        accountId: ACCOUNTID_FIELD,
        type: TYPE_FIELD,
        stage: STAGENAME_FIELD,
        amount: AMOUNT_FIELD,
        lead: LEADSOURCE_FIELD
    }
}