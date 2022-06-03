MyQueeuExample1 cls = new MyQueeuExample1();
Id jobId = system.enqueueJob(cls);
system.debug('@@@::' + jobId);

List<asyncApexJob> rcd = [Select id, status from asyncApexJob where id =: jobId];
system.debug('@@@::' + rcd);


List<Account> lstAcc = [Select id,Name from Account where Name = 'TEST QUEUEABLE BATCH'];
System.debug('@@@::lst:::'+lstAcc);
updAcc_QueApex cls = new updAcc_QueApex(lstAcc);
Id jobId = system.enqueueJob(cls);

List<Account> lstAcc = [Select id,Name from Account where Name = 'TEST QUEUEABLE BATCH UPDATE FROM QUEUEABLE'];
System.debug('@@@::lst:::'+lstAcc);
updAcc_QueApex cls = new updAcc_QueApex(lstAcc);
Id jobId = system.enqueueJob(cls);


Acc_DivInoUpd_Batch cls = new Acc_DivInoUpd_Batch();
Id jobIds = Database.executeBatch(cls,200);
system.debug('@@@:::'+jobIds);

Acc_DivInoUpd_Schedulable cls = new Acc_DivInoUpd_Schedulable();
String strCron = '0 0 12 1 2 ? *';
system.schedule('Acc Division Info Update', strCron, cls);