import {  LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';
import ACCOUNTID_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACTID_FIELD from '@salesforce/schema/Case.ContactId';

export default class SundayLightningRecordFormCase extends LightningElement {

     recordId="5005f000008ObfWAAS";
    objectName=CASE_OBJECT;

    fields={
        subject:SUBJECT_FIELD,
        priority:PRIORITY_FIELD,
        status:STATUS_FIELD,
        description:DESCRIPTION_FIELD,
        origin:ORIGIN_FIELD,
        accountname:ACCOUNTID_FIELD,
        contactname:CONTACTID_FIELD
    }

    successHandler(){
        const toastSuccess = new ShowToastEvent({
            title:"Success",
            message:"Your case has been saved successfully!",
            variant:"success"
        });
        this.dispatchEvent(toastSuccess);
    }
    // errorHandler(){
    //     const toastError = new ShowToastEvent({
    //         title:"Error",
    //         message:"Something went wrong!",
    //         variant:"error"
    //     });
    //     this.dispatchEvent(toastError);
    // }
}