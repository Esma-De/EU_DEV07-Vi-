trigger mytrg_getID_setorList on Account (before insert, after insert, before update, after update) {
  /* 
  Map<Id, Account> mpTrgNewMap = trigger.newMap;
  Map<Id, Account> mpTrgNewMap = trigger.oldMap;
  //mpNewAcc, mpoldAcc is a common way to shorten maps veriable
  if(trigger.isBefore){
      if(trigger.isInsert){

      }

      if(trigger.isUpdate){
        Set<Id> setIds = new set<Id>();
        List<Account> lstAcc = trigger.new;
      for(Account acc :lstAcc){
        setIds.add(acc.Id);
       }

        system.debug('@@@@Before Update' + setIds );

      }
  }

    if(trigger.isAfter){
      if(trigger.isInsert){
        if(trigger.isUpdate){
          Set<Id> setIds = new set<Id>();
          List<Account> lstAcc = trigger.new;
        for(Account acc :lstAcc){
          setIds.add(acc.Id);
        }

          system.debug('@@@@ After Insert ' + setIds );

        }

        
      }
}*/

List<Account> lstAccRcds;
if(trigger.isBefore){
        lstAccRcds = new List<Account>();
        for(Account acc : trigger.new){
            if(acc.Active__c == 'Yes'){
                acc.Description = 'ISACTIVE';
            }else{
                acc.Description = '';
            }
           // lstAccRcds.add(acc);
        }
}
}