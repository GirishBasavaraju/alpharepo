public class AccountProcessor {
@future
    public static void countContacts(List<ID> LstId){
        List<Account> acc = [SELECT Id,	Number_of_Contacts__c,(Select id from contacts) from Account where Id IN:LstId];
        for(Account ada : acc){
            list<contact> lstcontact =ada.contacts;
            ada.Number_of_Contacts__c = lstcontact.size();
            
           }
        update acc;
    }
}