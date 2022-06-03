public with sharing class MySwitchExample {
    /*public static void myMethodSwitch(String strVal) {
                
        if(String.isNotBlank(strVal)){            //Strval != null
            switch on strVal {
                when 'Monday' {     // when block 1
                    System.debug('My first class in the week day');
                }   
                when 'Tuesday' {        // when block 2
                    System.debug('My Second class in the week day');
                }
                when 'Thursday' {       // when block 3
                    System.debug('My third class in the week day');
                }
                when else {       // default block, optional
                    System.debug('My last class in the week day');
                }
            }
        }*/
    
    public static void myMethMultValues(Integer i) {        
        
        switch on i {           
            when 2, 3, 4 {              
                System.debug('when block 2 and 3 and 4');
            }
            when 5, 6 {
                System.debug('when block 5 and 6');
            }
            when 7 {
                System.debug('when block 7');
            }
            when else {
                System.debug('default');
            }
         }
    }
    
}