public with sharing class MyIfExampleClass {
    public MyIfExampleClass() {

    }

    public void checkMyAccNum(Integer intVal1, Integer intVal2){
        //NESTED IF
        if(intVal1 != null && intVal2 != null){
            if(intVal1 == intVal2){
                System.debug('VALUES ARE SAME');
            }else{
                System.debug('VALUES ARE Not SAME');

            }

        }else{
            System.debug('In Else Block :::: passed value has null.');
        }   
    }
    
}