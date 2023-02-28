@isTest
public class ColorTriggerLogicTest {
    @isTest static void TestAddOportunityWithColorToAnAccount() {
        List<Account> accList = new List<Account>();
        // Create accounts
        Account acct;
        integer c=9000;
        
        for(integer i=0; i<3; i++){
            acct = new Account(Name='Test Account', AnnualRevenue = c, Registe_date__c= date.today());
        	accList.add(acct);
            c= c + 20000;
        }

         // Perform test
         Test.startTest();
       	 insert accList;
         Test.stopTest();

        String rojo = 'https://www.colorcombos.com/images/colors/990000.png';
        String amarillo ='https://www.colorcombos.com/images/colors/FDD023.png';
        String verde='https://www.colorpsychology.org/wp-content/uploads/2015/02/green-1.png';
        
        List<Opportunity> oppList = [SELECT Id, Photo_url__c FROM Opportunity];
        System.assertEquals(3, oppList.size());
        System.assertEquals(rojo, oppList[0].Photo_url__c);
        System.assertEquals(amarillo, oppList[1].Photo_url__c);
        System.assertEquals(verde, oppList[2].Photo_url__c);
      }
}