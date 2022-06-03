public with sharing class StringClass {
    String strAlpha; 
    String strFirstName;
    String strLastName;
    String strRollNum;
    String strPrefix;

    public StringClass(){
        strAlpha = 'ABCD';
        
    }

    public String appendMyName(String strFName, String strLName){
        String strFullName;
        strPrefix = 'Mrs.';
        strFirstName = strFName.toUpperCase();
        strLastName = strLName.toLowerCase();
        strFullName = strPrefix + ' ' + strFirstName + ' ' + strLastName; 
        System.debug('@@@@ Before return type::::');
        return strFullName;
        
    }

    public Boolean checkContains(String str1, String str2){
        String strWord1 = str1;
        String strWord2 = str2;
        Boolean boolResult = str2.contains(str1);
        System.debug('@@@::: result--> ' + boolResult);
        return boolResult;
    }

    public Integer checkCountofString(String str){
        String strVal = str;
        Integer intLeng = strVal.length();
        System.debug('£££::: result--> ' + intLeng);
        return intLeng;
    }
}