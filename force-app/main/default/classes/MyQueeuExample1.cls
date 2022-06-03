public class MyQueeuExample1 implements system.Queueable {
    public void execute(QueueableContext contact){
        List<Account> lstAcc = new List<Account>();
        Account acc = new Account();
        acc.Name = 'TEST QUEUEABLE BATCH';
        lstAcc.add(acc);

        if(!lstAcc.isEmpty()) insert lstAcc;
    }
}
