public with sharing class ColorTriggerLogic {
    public static Boolean isLowerThan10k(Opportunity opp){
        if(opp.Annual_Income__c < 10000){
            return true;
        }
        return false;
    }
}