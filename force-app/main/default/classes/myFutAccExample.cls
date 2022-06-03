public with sharing class myFutAccExample {
    @future
    public static void updAccData(Set<Id> setAccIds) {
        List<Account> lstUpd = new List<Account>();
        if(setAccIds != null){
            List<Account> lstAcc = [Select id,name,No_of_Email_Cases__c,No_of_Phone_Cases__c,
                                        No_of_Web_Cases__c,(Select id,Origin from Cases) from Account
                                                    where id=: setAccIds];
            if(lstAcc != null && lstAcc.size()>0){
                for(Account acc: lstAcc){
                    Integer intEmail=0, intWeb=0, intPhone=0;
                    // Integer intphone = 0;
                    // Integer intWeb = 0;
                    for(Case cs: acc.Cases){
                        if(cs.Origin == 'Web'){
                            intWeb++;
                        }else if(cs.Origin == 'Email'){
                            intEmail++;
                        }else if(cs.Origin=='Phone'){
                            intPhone++;
                        }
                    }
                    acc.No_of_Email_Cases__c = intEmail;
                    acc.No_of_Phone_Cases__c = intPhone;
                    acc.No_of_Web_Cases__c = intWeb;
                    lstUpd.add(acc);
                }
                if(lstUpd != null && lstUpd.size()>0){
                    update lstUpd;
                }
            }
        }
    }
}