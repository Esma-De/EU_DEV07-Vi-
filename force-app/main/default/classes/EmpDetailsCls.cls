public with sharing class EmpDetailsCls {
    public EmpDetailsCls() {

    }
    public Set<String> getLocation(){

 // queey Employee from custom object Employee__c
 List<Employee__c> lstEmp = new List<Employee__c>();
 Set<String> setLoc = new Set<String>();
 lstEmp = [Select id, Employee_Name__c, Salary_Per_Day__c, Location__c from Employee__c Limit 100];
 // if check to make sure at least one record is available to process
 if(lstEmp !=null && lstEmp.size()>0){
     // For each Single record : All records
     for( Employee__c emp : lstEmp){
         if (emp.Location__c !=null){
             system.debug('City-----> ' + emp.Location__c);
             setLoc.add(emp.Location__c);
         }       
     }
     return setLoc;
 }else{
     return null;
 }


    }
}
