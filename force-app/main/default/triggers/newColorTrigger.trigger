trigger newColorTrigger on Account (before insert, before update) { //One trigger per SObject

    /*List<Account> accList = [SELECT Id, Name FROM Account WHERE Id IN : Trigger.new];
    List<Opportunity> oppToBeCreated = new List<Opportunity>();

    if(accList.size() > 0){
        for(Account acc : accList){

                if(ColorTriggerLogic.isLowerThan10k(acc)){
                    
                    Opportunity opportunity1 = new Opportunity();
                    opportunity1.Name = acc.Name;
                    opportunity1.CloseDate = Date.newInstance(2023, 03, 15);
                    opportunity1.StageName = 'Prospecting';
                    opportunity1.Photo_url__c = 'https://www.colorcombos.com/images/colors/990000.png'; //rojo
                    opportunity1.AccountId = acc.Id;
                    oppToBeCreated.add(opportunity1);
                    
                }
        }
        }
    

    if(oppToBeCreated.size() > 0){
        insert oppToBeCreated;
    }*/

    for(Account acc : Trigger.new){ //Bulkify code
        if(ColorTriggerLogic.isLowerThan10k(acc)){
            
            Opportunity opportunity1 = new Opportunity();
            opportunity1.Name = acc.Name;
            opportunity1.CloseDate = Date.newInstance(2023, 03, 15);
            opportunity1.StageName = 'Prospecting';
            opportunity1.Photo_url__c = 'https://www.colorcombos.com/images/colors/990000.png'; //rojo
            opportunity1.AccountId = acc.Id;
            insert opportunity1;
            
        }
}
}