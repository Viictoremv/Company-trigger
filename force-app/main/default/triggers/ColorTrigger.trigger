trigger ColorTrigger on Account (before insert, before update) {
    for(Account acc : Trigger.new){ //Bulkify code
        if(acc.Registe_date__c < Date.today()){
            ColorTriggerLogic.orangeOpportunity(acc);
        }
        else{
            if(acc.AnnualRevenue < 10000){  
                ColorTriggerLogic.redOpportunity(acc);    
            }
            if(acc.AnnualRevenue >= 10000 && acc.AnnualRevenue < 30000){
                ColorTriggerLogic.yellowOpportunity(acc);
            }
            if(acc.AnnualRevenue >= 30000){
                ColorTriggerLogic.greenOpportunity(acc);
            }
        }
    }
}
//One trigger per object