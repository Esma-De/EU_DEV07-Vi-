trigger SFProject_Trg on Salesforce_Project__c (after insert) {
  if(Trigger.isAfter){
    if(Trigger.isInsert){
      //Calling.....
      sf_Proj_Trg_Handler.crtSFTickets(Trigger.new);

    }
  }

}