import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';

export default class GetPicklistValueOpportunity extends LightningElement {
    OpportunityRtId;
    stageNameOptions = [];
    selectedStage;

    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    opportunityInfoHandler({data, error}) {
        if(data) {
            this.OpportunityRtId = data.defaultRecordTypeId;
        }
    }

    @wire(getPicklistValues,{fieldApiName: STAGENAME_FIELD, recordTypeId: '$OpportunityRtId'})
    picklistHandler({data, error}) {
        if(data) {
            console.log(data);
            this.stageNameOptions = this.picklistGenerator(data);
        }
        if(error) {
            console.error(error);
        }
    }
    picklistGenerator(data) {
        return data.values.map(item => ({
            label: item.label,
            value: item.value
        }));
    }

    changeHandler(event) {
        this.selectedStage = event.target.value;
    }
}