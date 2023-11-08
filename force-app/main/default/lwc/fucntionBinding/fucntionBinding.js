import { LightningElement } from 'lwc';

export default class FucntionBinding extends LightningElement {
    // greeting = 'Sameer';
    firstName = '';
    lastName = '';
    // userName = "hi";
    handleClick(event){
        // if(this.event.value === "firstName"){
        //     this.firstName = "Sameer";

        // }else if(this.event.name === "lname"){
        //     this.lastName = "Kundu";
        // }
        var input = this.template.querySelectorAll("lightning-input");
        input.forEach(function(element) {
            if(element.name === 'fname')
            this.firstName = element.value;
            else if(element.name === 'lname')
            this.lastName= element.value;
        },this);
       
    }
    // get userName(){
    //     // return `${this.firstName} ${this.lastName}`;
    //     return this.firstName+" "+this.lastName;
    // }
    
}