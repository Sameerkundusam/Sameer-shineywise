import { api, LightningElement } from 'lwc';

export default class ChildComponent extends LightningElement {
    usernameItemName = 'Default';

    @api
    get itemName(){
        return this.usernameItemName;
    }
    set itemName(value){
        this.usernameItemName = value.toUpperCase();
    }
}