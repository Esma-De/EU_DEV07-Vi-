public with sharing class myCont_Trg_handler {//Description: Dont allow users to update contact record if LeadSource is Partner Refferral.
    
public static void updOfContRcd(List<Contact> trgNew,Map<Id,Contact> trgNewMap,
                                    List<Contact> trgOd,Map<Id,Contact> trgOldMap){
    if(trgNew != null && trgNew.size()>0){
        for(Contact con : trgNew){
            //Check for     
            if (con.LeadSource == 'Partner Referral') {
                con.LeadSource.addError('Cannot update \'Partner Referral\' contacts');
                
            }
        }
    }

}



//Dont allow users to update lead souce field to update.
public static void updOfLeadSource(List<Contact> trgNew,Map<Id,Contact> trgNewMap,
                    List<Contact> trgOd,Map<Id,Contact> trgOldMap){
    for(Contact con : trgNew){
        //new_web != old_Phone Inquiry
        system.debug('Old value from Map::::'+trgOldMap.get(con.id).LeadSource);
        system.debug('New value from trgNew list::::'+con.leadsource);
        if(con.LeadSource != trgOldMap.get(con.id).LeadSource){
            con.LeadSource.addError('Can not allow you to update LeadSource field.');
        }


    }

}


public static void updAccwithConNum(List<Contact> lstContNew){

    Set<Id> setAccId = new Set<Id>();
    List<Account> lstAccUpd = new List<Account>();


    //Get Parent Id - Account records ID from incoming list of Contact
    if(lstContNew != null && lstContNew.size()>0){
        for(Contact con : lstContNew){
            if(con.AccountId != null){
                setAccId.add(con.AccountId); 
            }
        }
    }

    
    //using setAccId Query Parent details - Account and its respective fields to handle
    // Number_of_Contacts__c fields will be updated with no of contacts

    if(setAccId != null && setAccId.size()>0){
        List<Account> lstAcc = [Select id, Name, Number_of_Contacts__c,
                                 (Select id, Name, Contact_VIP__c from Contacts)
                                         from Account WHERE id =: setAccId];
        system.debug('@@@@:::'+lstAcc.size());
        system.debug('@@@@:::' +  lstAcc);
        if(lstAcc != null && lstAcc.size()>0){
            for(Account acc : lstAcc){
                system.debug('@@@@:::in loop');
                Account accObj = new Account();
                accObj.id = acc.id;
                accObj.Number_of_Contacts__c = acc.Contacts.size();                
                system.debug(acc.Contacts);
                lstAccUpd.add(accObj);
                system.debug(accObj);
            }
            system.debug('@@@@:::in lstAccUpd: '+lstAccUpd.size());
            if(lstAccUpd != null && lstAccUpd.size()>0){
                update lstAccUpd;
            }
        }
    }



}


//to implement 30-50 lines of logic in code it will take 1hr
}
