
public with sharing class ListExamples {
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