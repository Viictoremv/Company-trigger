public with sharing class ColorTriggerLogic {

    public static void redOpportunity(Account acc){
        Opportunity opportunity = new Opportunity();
        opportunity.Name = acc.Name + 'opportunity';
        opportunity.CloseDate = date.today();
        opportunity.StageName = 'Prospecting';
        opportunity.Photo_url__c = 'https://www.colorcombos.com/images/colors/990000.png'; //rojo
        opportunity.AccountId = acc.Id;
        insert opportunity;  
    }

    public static void yellowOpportunity(Account acc){
        Opportunity opportunity = new Opportunity();
        opportunity.Name = acc.Name + 'opportunity';
        opportunity.CloseDate =  date.today();
        opportunity.StageName = 'Prospecting';
        opportunity.Photo_url__c = 'https://www.colorcombos.com/images/colors/FDD023.png'; //amarillo
        opportunity.AccountId = acc.Id;
        insert opportunity;  
    }

    public static void greenOpportunity(Account acc){
        Opportunity opportunity = new Opportunity();
        opportunity.Name = acc.Name + 'opportunity';
        opportunity.CloseDate =   date.today();
        opportunity.StageName = 'Prospecting';
        opportunity.Photo_url__c = 'https://www.colorpsychology.org/wp-content/uploads/2015/02/green-1.png'; //amarillo
        opportunity.AccountId = acc.Id;
        insert opportunity;  
    }

    public static void orangeOpportunity(Account acc){
        Opportunity opportunity = new Opportunity();
        opportunity.Name = acc.Name + 'opportunity';
        opportunity.CloseDate =  date.today();
        opportunity.StageName = 'Prospecting';
        opportunity.Photo_url__c = 'https://t4.ftcdn.net/jpg/03/29/19/15/360_F_329191596_tRQiV7LZjTZtuPM09QyOS09HV1D9VimE.jpg'; //amarillo
        opportunity.AccountId = acc.Id;
        insert opportunity;  
    }
}