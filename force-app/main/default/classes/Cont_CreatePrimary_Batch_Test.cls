@isTest
public with sharing class Cont_CreatePrimary_Batch_Test {
    @isTest
    public static void method1() {
        List<Account> lstAcc = TestDataClass.crtAccDepCode();
        if(lstAcc != null){
            insert lstAcc;
        }
        test.startTest();
       // Database.SaveResult []str = Database.insert(lstContRcds,true);
        //system.assertEquals(True, str[0].isSuccess());
        Acc_DivInoUpd_Batch cls = new Acc_DivInoUpd_Batch();
        Id jobIds = Database.executeBatch(cls,200);
        test.stopTest();

        List<Account> cntAcc = [SELECT id,Department_Code__c, Division_Info__c 
                                FROM Account 
                                WHERE Department_Code__c = '100'];
        System.assertEquals('Admin', cntAcc[0].Division_Info__c);
    
    }
}