trigger ColorTrigger on Account (after insert) {
    for(Account acc : Trigger.new){ //Bulkify code
        if(acc.Registe_date__c < Date.today()){
            ColorTriggerLogic.orangeOpportunity(acc);
        }
        else{
            Integer annualRevenue = acc.AnnualRevenue;
            if(annualRevenue < 10000){   //evitar hardcoging
                ColorTriggerLogic.redOpportunity(acc);  //evitar logica en el trigger  
            }
            if(annualRevenue >= 10000 && acc.AnnualRevenue < 30000){
                ColorTriggerLogic.yellowOpportunity(acc);
            }
            if(annualRevenue >= 30000){
                ColorTriggerLogic.greenOpportunity(acc);
            }
        }
    }
}
//One trigger per object