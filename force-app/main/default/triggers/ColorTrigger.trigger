trigger ColorTrigger on Opportunity (before insert, before update) { //One trigger per SObject
    for(Opportunity opp : Trigger.new){ //Bulkify code
        if(ColorTriggerLogic.isLowerThan10k(opp)){
            opp.Photo_url__c = 'https://www.colorcombos.com/images/colors/990000.png'; //rojo
        }
        if(opp.Annual_Income__c >= 10000 && opp.Annual_Income__c < 30000){
            opp.Photo_url__c = 'https://www.colorcombos.com/images/colors/FDD023.png'; //amarillo
        }
        if(opp.Annual_Income__c > 30000){
            opp.Photo_url__c = 'https://www.colorpsychology.org/wp-content/uploads/2015/02/green-1.png'; //verde
        }
        if(opp.CloseDate < Date.today()){
            opp.Photo_url__c = 'https://t4.ftcdn.net/jpg/03/29/19/15/360_F_329191596_tRQiV7LZjTZtuPM09QyOS09HV1D9VimE.jpg'; //naranja
        }
    }
}
