Car obj = new Car();
//obj.switchOn();


//Example-1  Add values to List - add()
List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
System.debug('@@@:::'+lstOfItms);
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
//lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
system.debug('#####:::::TOTAL LIST OF ITEMS::::'+lstOfItms);
///getting Value using get() and Index
system.debug('$$$  Value at Index 5:::Using get method of list::::'+lstOfItms.get(5));
system.debug('####::: get value using index::::'+lstOfItms[5]);

//Size of list
System.debug('~~~ size of the list:::: '+ lstOfItms.size());

//Add multiple values in single go
List<String> lstVals = new List<String>{'Snacks', 'Chocos'};
System.debug('Val in list::: ' + lstVals);

// Clear data in list
lstVals.clear();
System.debug('@@:::clear data in list::: ' + lstVals);

//List contains() Example
List<Integer> lstVals = new List<Integer>();
lstVals.add(175);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
lstVals.add(450);
lstVals.add(550);
lstVals.add(780);
lstVals.add(980);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
Boolean boolVal_1 = lstVals.contains(780);
system.debug(' Check for 780 in list::::'+boolVal_1);       //T
Boolean boolVal_2 = lstVals.contains(900);
system.debug(' Check for 900 in list::::'+boolVal_2);       //F

//isEmpty() example
List<String> strLst = new List<String>();
system.debug('IsEmpty Check ::::1::::'+strLst.isEmpty());
strLst.add('Vikram');
system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add('');
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add(' '); // Taking as String
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());

List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Water');
lstOfItms.add('Bread');
system.debug('#####:::::TOTAL LIST OF ITEMS::BEFORE SORT::'+lstOfItms);
lstOfItms.sort();
system.debug('#####:::::TOTAL LIST OF ITEMS::AFTER SORT::'+lstOfItms);



Loading history…

Vikram  7:48 PM
//Example-1  Add values to List - add()
List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
System.debug('@@@:::'+lstOfItms);
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
system.debug('#####:::::TOTAL LIST OF ITEMS::::'+lstOfItms);
///getting Value using get() and Index
system.debug('$$$  Value at Index 5:::Using get method of list::::'+lstOfItms.get(5));
system.debug('####::: get value using index::::'+lstOfItms[5]);

Vikram  7:59 PM
//Size of list
system.debug('### SIZE OF THE LIST:::::'+lstOfItms.size());
//Add Multiple values in single go
List<String> lstVals = new List<String>{'Snacks','Chocos'};
system.debug('Vals in list:::'+lstVals);

Vikram  8:05 PM
//Clear  data in list
lstVals.clear();
system.debug('@@@:::CLEAR DATA IN LIST:::'+lstVals);

Vikram  8:14 PM
ListExample_half.txt 
//Instance of LIST
List<String> strLst = new List<String>(); // Memory is allocated 
List<String> strLst2;                       //Memory is not allocated yet
    
Click to expand in-line (46 lines)



Vikram  8:41 PM
Collections uses Indexing format
8:41
image.png 
image.png



Vikram  8:55 PM
//List contains() Example
List<Integer> lstVals = new List<Integer>();
lstVals.add(175);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
lstVals.add(450);
lstVals.add(550);
lstVals.add(780);
lstVals.add(980);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
Boolean boolVal_1 = lstVals.contains(780);
system.debug(' Check for 780 in list::::'+boolVal_1);       //T
Boolean boolVal_2 = lstVals.contains(900);
system.debug(' Check for 900 in list::::'+boolVal_2);       //F
:raised_hands:
1


Vikram  9:08 PM
//Equals method check Example
List<String> lstStr_1 = new List<String>();
List<String> lstStr_2 = new List<String>();
lstStr_1.add('SFDC DEV CLASS');
lstStr_2.add('SFDC DEV CLASS');
Boolean boolVal = lstStr_1.equals(lstStr_2);                //T
system.debug('@@@::::Result of boolVal::::'+boolVal);
lstStr_1.add('Batch Dev 007');
boolVal = lstStr_1.equals(lstStr_2);
system.debug('@@@::::Result of boolVal::::'+boolVal);

Vikram  9:21 PM
//isEmpty() example
List<String> strLst = new List<String>();
system.debug('IsEmpty Check ::::1::::'+strLst.isEmpty());
strLst.add('Vikram');
system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add('');
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add(' '); // Taking as String
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());

Vikram  9:31 PM
//Sort() Example
List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Water');
lstOfItms.add('Bread');
system.debug('#####:::::TOTAL LIST OF ITEMS::BEFORE SORT::'+lstOfItms);
lstOfItms.sort();
system.debug('#####:::::TOTAL LIST OF ITEMS::AFTER SORT::'+lstOfItms);

Vikram  10:01 PM
List examples with Methods
ListExample.txt 
//Instance of LIST
List<String> strLst = new List<String>(); // Memory is allocated 
List<String> strLst2;                       //Memory is not allocated yet
    
//Example-1  Add values to List - add()
List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
System.debug('@@@:::'+lstOfItms);
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
system.debug('#####:::::TOTAL LIST OF ITEMS::::'+lstOfItms);
///getting Value using get() and Index
system.debug('$$$  Value at Index 5:::Using get method of list::::'+lstOfItms.get(5));          // My style of Code
system.debug('####::: get value using index::::'+lstOfItms[5]);
//Size of list
system.debug('### SIZE OF THE LIST:::::'+lstOfItms.size());
//Add Multiple values in single go
List<String> lstVals = new List<String>{'Snacks','Chocos'}; 
system.debug('Vals in list:::'+lstVals);
//Clear  data in list
lstVals.clear();
system.debug('@@@:::CLEAR DATA IN LIST:::'+lstVals);
//List contains() Example
List<Integer> lstVals = new List<Integer>();
lstVals.add(175);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
lstVals.add(450);
lstVals.add(550);
lstVals.add(780);
lstVals.add(980);
System.debug('###::: List of Values ::::in lstVals::: '+lstVals);
Boolean boolVal_1 = lstVals.contains(780);
system.debug(' Check for 780 in list::::'+boolVal_1);       //T
Boolean boolVal_2 = lstVals.contains(900);
system.debug(' Check for 900 in list::::'+boolVal_2);       //F
//in-line check in debug statement
System.debug('@@@::::'+lstVals.contains(780));
//Equals method check Example
List<String> lstStr_1 = new List<String>();
List<String> lstStr_2 = new List<String>();
lstStr_1.add('SFDC DEV CLASS');
lstStr_2.add('SFDC DEV CLASS');
Boolean boolVal = lstStr_1.equals(lstStr_2);                //T
system.debug('@@@::::Result of boolVal::::'+boolVal);
lstStr_1.add('Batch Dev 007');
boolVal = lstStr_1.equals(lstStr_2);                
system.debug('@@@::::Result of boolVal::::'+boolVal);
//isEmpty() example
List<String> strLst = new List<String>();
system.debug('IsEmpty Check ::::1::::'+strLst.isEmpty());
strLst.add('Vikram');
system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add('');
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//strLst.add(' '); // Taking as String
//system.debug('IsEmpty Check ::::2::::'+strLst.isEmpty());
//Sort() Example
List<String> lstOfItms = new List<String>();
lstOfItms.add('Snacks');  //Index start with 0
lstOfItms.add('Chocos');
lstOfItms.add('SoftDriks');
lstOfItms.add('USB Port cable');
lstOfItms.add('Cleaning stuff');
lstOfItms.add('SOAP');
lstOfItms.add('Body wash');
lstOfItms.add('Chocos');
lstOfItms.add('Gift Wrapper');
lstOfItms.add('Water');
lstOfItms.add('Bread');
system.debug('#####:::::TOTAL LIST OF ITEMS::BEFORE SORT::'+lstOfItms);
lstOfItms.sort();
system.debug('#####:::::TOTAL LIST OF ITEMS::AFTER SORT::'+lstOfItms);
Collapse


/*
List Example with For Each loop and Custom Object Data - Create Custom Object and added two Fields to use this class
EmpDetailsCls.txt */
public with sharing class EmpDetailsCls {
    Public Static List<Employee__c> lstEmp;
    //Method Name: getMyEmpDetails
    public static void getMyEmpDetails(){
        lstEmp = new List<Employee__c>();
        lstEmp = [Select id,Name, Employee_Name__c, Salary_Per_Day__c from Employee__c];
        if(lstEmp != null && lstEmp.size()>0){
            // lstEmp is not empty 
            for(Employee__c obj : lstEmp){
                system.debug('@@@::::Emp Name::::::    '+obj.Employee_Name__c+'   has salary per day ::::'+obj.Salary_Per_Day__c);
                
            }
        }
    }
    
}






























