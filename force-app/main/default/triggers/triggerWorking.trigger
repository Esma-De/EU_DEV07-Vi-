trigger triggerWorking on Account (before insert) {

  if(trigger.isAfter){
    
    if(trigger.isInsert){
      List<Account> lstAccRcds = Trigger.new;  
      system.debug('Trigger list after insert:::: '+ lstAccRcds);
    }
  }

  if(trigger.isBefore){
    List<Account> lstAccRcds = Trigger.new;
    if(trigger.isInsert){
      
      system.debug('Trigger list before insert:::: '+ lstAccRcds);
      system.debug('Trigger list before insert:::: '+ Trigger.new);
    }
    if(trigger.new != null){
      for(Account acc: Trigger.new){
          System.debug('@@@@ name:::: ' + acc.name);
          System.debug('@@@@ name:::: ' + acc.phone);
      }
      if(lstAccRcds != null){
        for(Account acc : lstAccRcds){
          System.debug('@@@@ name:::: ' + acc.name);
          System.debug('@@@@ name:::: ' + acc.phone);
         
        }

      }
    }
  }

}