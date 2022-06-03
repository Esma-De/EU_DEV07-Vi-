trigger myCont_Trg on Contact  (before update,after insert, after update,after delete, after undelete) {
  //generic - It is designed to support any function in future with out major changes in code
  if(trigger.isBefore ){
      if(trigger.isUpdate){
          //Calling Trigger helper ...
          //myCont_Trg_handler.updOfContRcd(trigger.new,trigger.NewMap,trigger.old,trigger.OldMap);

          //Validation 2
          myCont_Trg_handler.updOfLeadSource(trigger.new,trigger.NewMap,trigger.old,trigger.OldMap);
      }
      
  }

  if(trigger.isAfter){
      if(trigger.isInsert ){
          //trigger.new
          myCont_Trg_handler.updAccwithConNum(trigger.new);
      }
      if(trigger.isDelete){
          //trigger.old
          //myCont_Trg_handler.updAccwithConNum(trigger.old);
      }
  }

}