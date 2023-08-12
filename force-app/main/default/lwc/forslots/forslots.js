import { LightningElement } from 'lwc';

export default class Forslots extends LightningElement {

    renderedCallback() {
        let slotnm = this.template.querySelectorAll("slot"); 
        for (let i = 0; i < slotnm.length; i++) {
            // eslint-disable-next-line @lwc/lwc/no-inner-html
            console.log(slotnm[i].name);
            console.log(slotnm[i].id);
        }

        let links = this.querySelectorAll("span"); 
        for (let i = 0; i < links.length; i++) {
            // eslint-disable-next-line @lwc/lwc/no-inner-html
            console.log(links[i].innerHTML);
        }
      }
    
      handleSlotChange(){
        console.log('handleSlotChange 発火');
     }

}