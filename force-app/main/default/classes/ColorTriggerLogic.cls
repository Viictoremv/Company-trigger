public with sharing class ColorTriggerLogic {
    public static Boolean isLowerThan10k(Account acc){
        if(acc.AnnualRevenue< 10000){
            return true;
        }
        return false;
    }

    public static Boolean isLowerThan30kAndHigherThan10k(Opportunity opp){ 
        if(opp.Annual_Income__c >= 10000 && opp.Annual_Income__c <= 30000){
            return true;
        }
        return false;
    }

    public static Boolean isHigherThan30k(Opportunity opp){
        if(opp.Annual_Income__c > 30000){
            return true;
        }
        return false;
    }

    public static Boolean Date(Opportunity opp){
        if(opp.CloseDate < Date.today()){
            return true;
        }
        return false;
    }

}