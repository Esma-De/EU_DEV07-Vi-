public with sharing class MyWhileLoopExample {
    public void myWhileCheckMethod(Integer i){
        if(i != null){
            while (i < 11) {
                system.debug('@@ Value of i is::::'+i);
                i++;                                         //i = i+1;
            }
        }
    }


    
}