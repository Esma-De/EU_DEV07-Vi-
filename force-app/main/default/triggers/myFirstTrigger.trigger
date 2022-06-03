trigger myFirstTrigger on Account (before insert, before update, after insert, after update) {

if(trigger.isBefore){
  if(trigger.isInsert){
    system.debug('This is Demo 2 - BEFORE -INSERT -Check' + trigger.new);

  }
  if (trigger.isUpdate) {
    system.debug('This is Demo 2 - BEFORE -UPDATE -Check');
    
  }

}

if(trigger.isAfter){
  if(trigger.isInsert){
    system.debug('My new record data - AFTER -INSERT -logic' + trigger.new);

  }
  if (trigger.isUpdate) {
    system.debug('This is Demo 2 - AFTER -UPDATE -Check');
    
  }
  
}

}


/*
  if(Trigger.isBefore && Trigger.isInsert){
      system.debug('Checking my before insert trigger log for before insert event.');
    
  }

  if(Trigger.isBefore && Trigger.isUpdate){
    system.debug('Checking my before update trigger log for before update event.');
 
}
  if(Trigger.isAfter && Trigger.isInsert){
      system.debug('Checking my after insert trigger log for after insert event.');
     
  }

  if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('Checking my after update trigger log for after update event.');
   
}*/

