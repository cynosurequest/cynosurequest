import { LightningElement, api, track } from 'lwc';
import getUsersReportingToMe from '@salesforce/apex/LeaveSummaryController.getUsersReportingToMe';
export default class LeaveUsageSummary extends LightningElement {
    @api recordId;
    @track isManager;
    @track userList;
    @track columns = [  { label: 'First Name', fieldName: 'FirstName'},
                        { label: 'Last Name', fieldName: 'LastName'},
                        { label: 'Manager Name', fieldName: 'Manager__r.Name'},
                        { label: 'Start Date', fieldName: 'Start_Date__c'},
                        { label: 'Email', fieldName: 'Email'}
                     ];
    connectedCallback() {
        this.isManager = true;
        console.log('@@@ Calling Connected Call back Leave Summary """" ');
        getUsersReportingToMe().then(
            result => {
                console.log('@@@@@ reusult is ' + result);
                 this.userList = result;
            }
        ).catch(
            error => {
                console.log('Exception occurred');
            }
        )
    }
}
