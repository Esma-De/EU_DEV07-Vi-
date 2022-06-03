public with sharing class MyAcc_TrgHandler {
    public static void updDespBasedOnActive(List<Account> trgNew,Map<Id,Account> trgNewMap,
    List<Account> trgOd,Map<Id,Account> trgOldMap){
if(trgNew != null){
for(Account acc : trgNew){
if(acc.Active__c == 'Yes'){
acc.Description = 'ISACTIVE';
}else if(acc.Active__c == 'No'){
acc.Description = 'IS NOT ACTIVE';
}else{
acc.Description = 'None';
}
}
}
}
public static void updContVIP(List<Account> lstAccNew){
    System.debug('@@@:::1');
    //Two list of contacts to handle contacts
    List<Contact> lstConTru = new List<Contact>();
    List<Contact> lstConFls = new List<Contact>();
    List<Contact> lstUpdCon = new List<Contact>();
    Set<id> setId = new Set<id>();
    for(Account acc: lstAccNew){
        setId.add(acc.id);
    }
    //Query to get contact record related to Account
    List<Account> lstAcc = [Select id,VIP__c,(Select id,Contact_VIP__c from Contacts)
                                 from Account WHERE ID =: setId];
    //Account with True and False
    if(lstAcc != null && lstAcc.size()>0){
        System.debug('@@@:::1');
        for(Account acc : lstAcc){
            if(acc.VIP__c == true){
                if(acc.contacts.size()>0){
                    System.debug('@@@:::2');
                    lstConTru.addAll(acc.Contacts);
                }
            }else{
                if(acc.Contacts.size()>0){
                    System.debug('@@@:::2');
                    lstConFls.addAll(acc.Contacts);
                }
            }
        }
    }
    //List is related with true of VIP
    if(lstConTru!= null && lstConTru.size()>0){
        System.debug('@@@:::5');
        for(contact con : lstConTru){
            con.Contact_VIP__c = true;
            lstUpdCon.add(con);
        }
    }
    //List is related with FALSE of VIP
    if(lstConFls!= null && lstConFls.size()>0){
        System.debug('@@@:::7');
        for(contact con : lstConFls){
            con.Contact_VIP__c = false;
            lstUpdCon.add(con);
        }
    }
    if(lstUpdCon != null && lstUpdCon.size()>0){
        System.debug('@@@:::9');
        update lstUpdCon;
        //check
    }
}





}
