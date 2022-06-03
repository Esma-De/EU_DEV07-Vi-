@isTest
public with sharing class myAccHandler_TC {
    @isTest
    public static void updDescBsdactYes_TC() {
        Account acc = new Account();
        acc.Name = 'Test Acc 1';
        acc.Active__c = 'Yes';
        insert acc;
		
    }
    @isTest
    public static void updDescBsdactNo_TC() {
        Account acc = new Account();
        acc.Name = 'Test Acc 1';
        acc.Active__c = 'No';
        insert acc;
        acc.VIP__c = true;
        update acc;
        Contact con = new Contact();
        con.lastName = 'testcon1';
        con.AccountId = acc.id;
        insert con;
    }
}
