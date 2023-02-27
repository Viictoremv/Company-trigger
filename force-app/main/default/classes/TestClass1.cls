@isTest
public with sharing class TestClass1 {

   @isTest static public void dataSetUp() {

        Opportunity opportunity1 = new Opportunity();
        opportunity1.Name = 'test1';
        opportunity1.CloseDate = Date.newInstance(2023, 03, 15);
        opportunity1.Annual_Income__c = 12000;
        opportunity1.StageName = 'Prospecting';

        Opportunity opportunity2 = new Opportunity();
        Opportunity2.Name = 'test2';
        Opportunity2.CloseDate = Date.newInstance(2023, 02, 28);
        Opportunity2.Annual_Income__c = 30020;
        opportunity2.StageName = 'Prospecting';

        Test.startTest();
        insert opportunity1;
        insert opportunity2;
        Test.stopTest();

        List<Opportunity> opportunities = [SELECT Id FROM Opportunity];
        System.assertEquals(2, opportunities.size());
    }
}