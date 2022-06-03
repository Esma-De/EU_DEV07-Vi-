StringClass stCl = new StringClass();

String strFullName = stCl.appendMyName('De ', 'Esma');
System.debug('@@' + strFullName);

Boolean boolResultCheck = stCl.checkContains('force', 'Salesforce');

Integer intResultCheck = stCl.checkCountofString('Salesforce');
System.debug('####:::Result:::' +  intResultCheck);

Integer intResultCheck1 = stCl.checkCountofString('I am alesforce Develeoper!!');
System.debug('####:::Result:::' +  intResultCheck1);