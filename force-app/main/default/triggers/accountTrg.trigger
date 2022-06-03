trigger accountTrg on Account (before insert,before update, after update) {
  if(trigger.isBefore){
      if(trigger.isInsert){
          //Calling
        myAcc_TrgHandler.updDespBasedOnActive(trigger.new,trigger.newMap,trigger.old,trigger.oldMap);
      }
      if(trigger.isUpdate){
          myAcc_TrgHandler.updDespBasedOnActive(trigger.new,trigger.newMap,trigger.old,trigger.oldMap);
      }
  }
  if(trigger.isAfter){
      if(trigger.isInsert){
          
      }
      if(trigger.isUpdate){
          //Update related contacts of accounts on update of VIP field
          MyAcc_TrgHandler.updContVIP(Trigger.new);

      }
  }
}