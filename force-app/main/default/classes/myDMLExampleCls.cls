
/*Class Name: myDML
Description: This class helps in understanding DML operations
Date: 22 April 2022*/
public with sharing class myDMLExampleCls {

    public static void crtAccRec() {

        Account acc = new Account();
        acc.Name ='Nora';
        acc.Phone =  '896236584';
        insert acc;
        system.debug('@@@:::' + acc);

    }
    /* //Description: this method helps inserting single record of Employee
     Employee__c emp = new Employee__c();
     emp.Employee__c_Name__c = 'Necmettin A';
     empl.Salary_Per_Day__c = 2300;
     emp.Location__c = 'Kars';
     insert emp;
     system.debug('@@@:::' + emp);*/
     public static void crtEmpRcd(){
        //instance of Employee__c
        Employee__c emp = new Employee__c();
        emp.Employee_Name__c = 'Necmettin A';
        emp.Salary_Per_Day__c = 2300;
        emp.Location__c ='Istanbul';
        insert emp;
        System.debug('###::::'+emp);
    }

    //Description: Update same record after inserting - immediately
    public static void crtUpdEmpRcd(){
        //instance of Employee__c
        Employee__c emp = new Employee__c();
        emp.Employee_Name__c = 'Omer';
        emp.Salary_Per_Day__c = 2600;
        emp.Location__c = 'Antalya';
        insert emp;
        System.debug('###::::'+emp);
        //Update same record with new value of name
        emp.Employee_Name__c = 'Omer Kaslioglu';
        emp.Location__c = 'Malatya';
        update emp;
        System.debug('$$$::::'+emp);
    }
    //Update record using existing record in SFDC, use SOQL to get data
    public static void updExtRcd_SOQL(){
        //Query the record with where clause and limit it to 1
        Account accRcd = [Select id,Name from Account where Name = 'Dickenson plc' Limit 1];
        if(accRcd != null){
            accRcd.Name = 'Dickenson Inc.';      // updated the field value/Data
        }
        update accRcd;      // update the record
        System.debug('###:::'+accRcd);
    }
   //insert contact record with account as parent in SFDC 
   public static void crtContRcd(){
    //Query the parent record - Account 
    Account accRcd = [Select id,Name from Account where Name = 'Dickenson Inc.' Limit 1];
    system.debug('@@::Account data:'+accRcd);
    //instance of Contact
    //Add the child record - Contact
    Contact con = new Contact();
    con.LastName = 'TEST NAME CONTACT 2';
    con.AccountId = accRcd.Id;          //Ref of Parent - 0017Q00000EaRp6QAF
    insert con;
    System.debug('###::::'+con);
}







}
