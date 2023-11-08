import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    areDetailVisible=false;

    handleClick(event){
        this.areDetailVisible = event.target.checked;
    }
}