public with sharing class sf_Proj_Trg_Handler {
    public static void crtSFTickets(List<Salesforce_Project__c> lstNew) {
        List<Salesforce_Ticket__c> lstSFT = new List<Salesforce_Ticket__c>();
        Salesforce_Ticket__c sfT;
        if(lstNew != null && lstNew.size()>0){
            for(Salesforce_Project__c rcd : lstNew){
                sfT = new Salesforce_Ticket__c();
                sfT.Subject__c = 'Default Ticket';
                sfT.Description__c = 'Default Ticket on creation of Salesforce project record.';            
                sfT.Salesforce_Project__c = rcd.id;
                lstSFT.add(sfT);
            }
            if(lstSFT != null && lstSFT.size()>0){
                insert lstSFT;
            }
        }
    }
}
