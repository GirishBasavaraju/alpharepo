@istest
public class AccountProcessorTest {
    public static void TestAccountprocessortest(){
        Account a = new Account(name='test Account');
        Insert a;
        
        Contact c = new contact(Firstname='mount',Lastname='Abu',AccountId='a.ID');
        Insert c;
        
        List<Id> LstId = new List<ID>();
        LstId.add(a.id);
	
        	Test.startTest();
            AccountProcessor.countContacts(LstId);
        Test.stopTest();
        
        Account ACC = [select Number_of_Contacts__c from Account where id = :a.id LIMIT 1];
        System.assertEquals ( Integer.valueOf(ACC.Number_of_Contacts__c) ,1);
  

    }

}