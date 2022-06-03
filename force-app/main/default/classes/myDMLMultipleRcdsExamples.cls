public with sharing class myDMLMultipleRcdsExamples {

         
    //Description: Insert multiple Account records - WRONG coding standards
   public static void insertMultipleAccRcds() {
        //Insert firt record
        // Account acc1 = new Account();       //memory Allocated
        // acc1.Name = 'Esma';        
        // insert acc1;
        // //Insert second record
        // Account acc2 = new Account();   //memory Allocated
        // acc2.Name = 'Nora';
        // insert acc2;
        // //Insert 3rd record
        // Account acc3 = new Account();   //memory Allocated
        // acc3.Name = 'Anthony';
        // insert acc3;
               
    }
    public static void insertMultRcdWithForLoop(){
        //handling single record code is not correct - avoid this style of coding
        // Account acc1 = new Account();
        // acc1.Name = 'Esma';        
        // insert acc1;
        
        List<Account> lstAcc = new List<Account>();
        Account acc;
        //never write a query inside for loop
        //Never perform DML operations inside for loop - Use collections to avoid it
        for(Integer i=0;i<15;i++){
            // memory is reallocated by cleaning data in acc                       
            acc = new Account();        //clear(0)  SoftInnovas v3 - cleared  6Byte
            
            acc.Name = 'SoftInnovas '+'V'+i; //SoftInnovas V5 --SoftInnovas v4
            lstAcc.add(acc);
            
        }
        //Perfone DML operation out side  loops
        //Null checks
        if(lstAcc != null && lstAcc.size()>0){
            insert lstAcc;
        }
    }
    //Example to insert multiple Contact and adding account as parent record ID
    //Relationship records handling Account and Contact
    public static Void insertMultContsWithPartAccID(){
        //Query Account record
        //Place Account record in List
        //Loop contact records
        //Add to a listofContacts
        //insert Contact - perform DML operation outside loop.
        Contact con;
        List<Contact> lstCon = new List<Contact>();
        //Query Account Record
        List<Account> lstAcc = [Select id,Name from Account where Name = 'Selcuk' Limit 1];
        system.debug('@@@:::::LIST ACC:::'+lstAcc);
        //using Index will get Account ID
        //listAcc[0].id
        //for loop
        if(lstAcc != null && lstAcc.size()>0){
            system.debug('@@@:::::Account ID:::'+lstAcc[0].id);
            for(integer i=0;i<3;i++){
                con = new Contact();
                con.LastName= 'Student '+i;
                con.AccountId = lstAcc[0].id;
                lstCon.add(con);
            }
        }
        //Do null check
        if(lstCon != null && lstCon.size()>0){
            insert lstCon;
        }
    }
    //Update existing data in salesforce
    //Query the data from SFDC
    //Loop the data and perform action
    //Update data using DML operation
    public static void updSalBasedOnLoc(){
        //This list will help in holding data from SFDC
        List<Employee__c> lstEmp = [Select id,Location__c, Salary_Per_Day__c from Employee__c Limit 20];
        List<Employee__c> updEmpData = new List<Employee__c>();
        //Update data with help of FOR Loop
        if(lstEmp != null && lstEmp.size()>0){
            for(Employee__c emp : lstEmp){
                if(emp.Location__c == 'Istanbul'){                   
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+500;                
                }else if(emp.Location__c == 'Antalya'){
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+120;
                }else if(emp.Location__c == 'Bursa'){
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+100;
                }else if(emp.Location__c == 'Gaziantep'){
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+140;
                }else if( emp.Location__c == 'Ankara'){
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+150;
                }else{
                    emp.Salary_Per_Day__c = emp.Salary_Per_Day__c+110;
                }
                updEmpData.add(emp);
            }
        }
        if(updEmpData != null && updEmpData.size()>0){
            update updEmpData;
        }
    }
    //Description: Send Names as parameters and insert records into SFDC
    public static void insertEmpRcds(Set<String> setNames){
        List<Employee__c> updEmp = new List<Employee__c>();
        Employee__c emp;
        if(setNames != null && setNames.size()>0){
            for(String str : setNames){
                system.debug('@@@ Before if check::::');
                if(String.isNotBlank(str)){                   
                    system.debug('@@@:::str values:::'+str);
                    emp = new Employee__c();
                    emp.Employee_Name__c = str;
                    emp.Salary_Per_Day__c = 2000;
                    updEmp.add(emp);
                }
                system.debug('@@@ After if check::::');
            }//end of loop
        }
        if(updEmp != null && updEmp.size()>0){
            insert updEmp;
        }
    }
    //Description: get ID of Accounts
   public static void getEmployeeId(){
    //Get the data from SFDC using query
    List<Employee__c> lstEmp = [Select id,Name from Employee__c limit 50000];
     Set<id> setEmpId = new Set<id>();
     //loop the list in for loop
    if(lstEmp!= null && lstEmp.size()>0){
         for(Employee__c emp :lstEmp){
             //add all account id's to a set
             setEmpId.add(emp.id);
         }
    }
    //print set data
    system.debug('@@@::Emp'+setEmpId);
    system.debug('@@:::SIZE::::'+setEmpId.size());
}
public Static Void getAccAndCont(Id accId){
    List<Account> lstRcds = [Select id, Name,(Select id,name from Contacts) from Account];
    system.debug('@@@:::'+lstRcds);


       // List<Account> lstRcds = [Select id, Name,(Select id,name from Contacts) from Account where id IN: accId ];
                //Prints all contact records
                System.debug('@@@:::Account related Contacts:::'+lstRcds[0].Contacts);
                //To access first Contact Name from inner query
                System.debug('@@@:::Account related Contacts:::'+lstRcds[0].Contacts[0].name);
    }
    List<String> lstOfStr = new List<String>{'SOFT','ESMA'};
        List<Account> lstOfAcc = [SELECT Id,Name,BillingCity FROM Account WHERE Name IN: lstOfStr];
        List<Account> lstUpdAcc = new List<Account>();
         if ( lstOfAcc!= null && lstOfAcc.size()>0){
            system.debug('@@::size::'+lstOfAcc.size());
            //expecting 2 records
            for(Account acc: lstOfAcc){
                acc.BillingCity = 'Istanbul';
                lstUpdAcc.add(acc);
            }
        
        Account acc1 = new Account();
        acc1.name = 'Roche';
        acc1.BillingCity = 'Mannhem';
        Account acc2 = new Account();
        acc2.Name = 'Telefonica';
        acc2.BillingCity='Munich';
        lstUpdAcc.add(acc1);
        lstUpdAcc.add(acc2);
        system.debug('@@::size::Before upsert::::'+lstOfAcc.size());
        if(lstUpdAcc.size()>0){
            upsert lstUpdAcc;
            system.debug('@@@@:::'+lstUpdAcc);
        }

        public static void deleteex(){
            //YAPMA
            Account acc = new Account();
            acc.name = 'ALL ROWS';
            insert acc;
         List<Account> lst =  [Select id, name from Account where name = 'TEST9999'];
         system.debug('@@@:::'+lst);
                if(lst.size()>0){
                    delete lst;
                }
        }



    
}
