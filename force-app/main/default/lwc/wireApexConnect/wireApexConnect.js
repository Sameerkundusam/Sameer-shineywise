import { api, LightningElement, wire } from 'lwc';
import getContact from '@salesforce/apex/ContactController.getContact';
export default class WireApexConnect extends LightningElement {
    @api recordId;

    @wire(getContact,{accId:'$recordId'})
    contacts;
}