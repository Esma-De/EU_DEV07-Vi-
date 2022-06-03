public with sharing class TestDataClass {
    public static List<Account> crtAccDepCode(){
        List<Account> lstAcc = new List<Account>();
        for(Integer i=0;i<9;i++){
            Account acc = new Account();
            acc.Name = 'TEST ACC' +i;
            if(i==1) acc.Department_Code__c = '100';
            if(i==2) acc.Department_Code__c = '200';
            if(i==3) acc.Department_Code__c = '300';
            if(i==4) acc.Department_Code__c = '500';
            if(i==5) acc.Department_Code__c = '900';
            if(i==6) acc.Department_Code__c = '400';
            lstAcc.add(acc);
        }
        if(lstAcc !=  null){
            return lstAcc;
        }else{
            return null;
        }
    }
}