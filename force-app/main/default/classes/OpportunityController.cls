public with sharing class OpportunityController {
    
    public static void updateProfile(List<Id> oppIds){
        List<Opportunity> opps = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN: oppIds];
        for(Opportunity opp : opps){
            // get opp record
            if(opp.Amount == null){
                opp.Profile__c = 'Low';
            } else if(opp.Amount <10000){
                opp.Profile__c = 'Low';
            } else if (opp.Amount > 50000){
                opp.Profile__c = 'High';
            } else{
                opp.Profile__c = 'Medium';
            }
        }
        // update all item at once
        update opps;
    }
    List<String> lstOfStr = new List<String>{'SOFT','ESMA'};
        List<Account> lstOfAcc = [SELECT Id,Name,BillingCity FROM Account WHERE Name IN: lstOfStr];
        List<Account> lstUpdAcc = new List<Account>();
        if( lstOfAcc!= null && lstOfAcc.size()>0){
            system.debug('@@::size::'+lstOfAcc.size());
            //expecting 2 records
            for(Account acc: lstOfAcc){
                acc.BillingCity = 'Istanbul';
                lstUpdAcc.add(acc);
            }
        }
        Account acc1 = new Account();
        acc1.name = 'Roche';
        acc1.BillingCity = 'Mannhem';
        Account acc2 = new Account();
        acc2.Name = 'Telefonica';
        acc2.BillingCity='Munich';
        lstUpdAcc.add(acc1);
        lstUpdAcc.add(acc2);
        system.debug('@@::size::Before upsert::::'+lstOfAcc.size());
        if(lstUpdAcc.size()>0){
            upsert lstUpdAcc;
            system.debug('@@@@:::'+lstUpdAcc);
        }
        public static void deleteex(){
            //YAPMA
            Account acc = new Account();
            acc.name = 'ALL ROWS';
            insert acc;
         List<Account> lst =  [Select id, name from Account where name = 'TEST9999'];
         system.debug('@@@:::'+lst);
                if(lst.size()>0){
                    delete lst;
                }
        }
}
