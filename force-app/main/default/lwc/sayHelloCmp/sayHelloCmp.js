import { LightningElement, api, track } from 'lwc';
import fetchUsers from '@salesforce/apex/StandardHomeController.getUserList';


export default class SayHelloCmp extends LightningElement {
    @track userCount;
     connectedCallback() {
                console.log('@@@ Calling Connected Call Hello Component """" ');
                fetchUsers().then(
                    result => {
                       this.userCount  = result.length;
                    }
                ).catch(
                    error => {
                        console.log('Exception occurred');
                    }
                )
     }
}