myDMLExampleCls.crtAccRec();
myDMLExampleCls.crtEmpRcd();
myDMLExampleCls.crtUpdEmpRcd();
myDMLExampleCls.updExtRcd_SOQL();

myDMLMultipleRcdsExamples.insertMultRcdWithForLoop();
myDMLMultipleRcdsExamples.updSalBasedOnLoc();

myDMLMultipleRcdsExamples.insertMultContsWithPartAccID();

Set<String> setOfNames = new Set<String> {'Sennur' , 'Nefise', 'Oguz','Neslihan' , 'Melek', 'Sheyma', 'Taha' , 'Salih', 'Abdullah'};
myDMLMultipleRcdsExamples.insertEmpRcds(setOfNames);

Set<String> setOfNames = new Set<String> {'   '};
myDMLMultipleRcdsExamples.insertEmpRcds(setOfNames);

myDMLMultipleRcdsExamples.getEmployeeId();
myDMLMultipleRcdsExamples.getAccAndCont();
Id myId = '0018d000007NYUYAA4';
List<Account> lstRcds = [Select id, Name,(Select id,name from Contacts) from Account where id =: myId ];
        //Prints all contact records
        System.debug('@@@:::Account related Contacts:::'+lstRcds[0].Contacts);
        //To access first Contact Name from inner query
        System.debug('@@@:::Account related Contacts:::'+lstRcds[0].Contacts[0].name);

        List<String> lstOfStr = new List<String>{'Selcuk','Nora'};
        List<Account> lstOfAcc = [SELECT Id,Name FROM Account WHERE Name IN: lstOfStr];
        system.debug('@@@:::'+lstOfAcc);