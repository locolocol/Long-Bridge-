// searchBoxSocialNumber.js
import { LightningElement, track } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import SearchSocials from '@salesforce/apex/SocialController.SearchSocials';

export default class SearchBoxSocialNumber extends NavigationMixin(LightningElement) {
    @track Socials;
    @track error;

    searchHandler(event) {
        const searchWord = event.target.value;
        if (searchWord.length > 0) {
            SearchSocials({ searchKey: searchWord })
                .then(result => {
                    if (result.length > 0) {
                        this.Socials = result;
                        this.error = undefined;
                    } else {
                        this.Socials = undefined;
                        this.error = "There is no matching Customer record for the entered search. Try again";
                    }
                })
                .catch(error => {
                    this.error = error.body.message;
                    this.Socials = undefined;
                });
        } else {
            this.Socials = undefined;
            this.error = "Please enter the Social in order to find matching customers.";
        }
    }

    handleSocClick(event) {
        const recordId = event.currentTarget.dataset.recordid;
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: recordId,
                actionName: 'view'
            }
        });
    }
}
