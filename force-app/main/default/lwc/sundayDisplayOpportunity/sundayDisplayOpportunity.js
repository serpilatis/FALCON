import { LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
//import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';

export default class SundayDisplayOpportunity extends LightningElement {
    rtId;
    oppName;
    stageNameOptions;
    typeOptions;
    selectedStageName;
    selectedType;

    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    oppHandler({data, error}) {
        if(data) {
            console.log(data);
            this.rtId = data.defaultRecordTypeId;
        }
        if(error) {
            console.log(error);
        }
    }
    @wire(getPicklistValues, {fieldApiName: STAGENAME_FIELD, recordTypeId: '$rtId'})
    stageNameHandler({data, error}) {
        if(data) {
            console.log(data);
            this.stageNameOptions = this.picklistGenerator(data);
        }
        if(error) {
            console.log(error);
        }
    }
    @wire(getPicklistValues, {fieldApiName: TYPE_FIELD, recordTypeId: '$rtId'})
    typeHandler({data, error}) {
        if(data) {
            console.log(data);
            this.typeOptions = this.picklistGenerator(data);
        }
        if(error) {
            console.log(error);
        }
    }
    picklistGenerator(data){
        return data.values.map(item=>({
            label: item.label,
            value: item.value
        }));
    }
    changeHandler(event) {
        if(event.target.name==="Name") {
            this.oppName = event.target.value;
        } else if (event.target.name==="Stage Name"){
            this.selectedStageName = event.target.value;
        } else if(event.target.name==="Type"){
            this.selectedType = event.target.value;
        }    
    }       
}