public with sharing class SystemLabelonAccount {
    public static void notPermitLessAnnualRevenue(Account[] triggerNew, map<Id, Account> triggerOldMap){
        for(Account acc : triggerNew){
            Account oldAccRecord = triggerOldMap.get(acc.Id);
            if(acc.AnnualRevenue != oldAccRecord.AnnualRevenue){
                double diffAmount;
                if(oldAccRecord.AnnualRevenue == null){
                    diffAmount = acc.AnnualRevenue;
                    System.debug('Difference = '+ diffAmount);
                }else if(acc.AnnualRevenue > oldAccRecord.AnnualRevenue){
                    diffAmount = acc.AnnualRevenue - oldAccRecord.AnnualRevenue;
                    System.debug('Difference = '+ diffAmount);
                }else {
                    acc.addError(System.Label.TriggerErrorMessage);
                }
            }
        }
    }
}