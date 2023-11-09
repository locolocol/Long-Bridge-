public class AutoInsuranceBatchScheduler implements Schedulable {
    public void execute(SchedulableContext SC) {
        AutoInsuranceUpdateExpiredBox batchInstance = new AutoInsuranceUpdateExpiredBox();
        Database.executeBatch(batchInstance);
}
}

/*public class AutoInsuranceBatchScheduler implements Schedulable {
    public void execute(SchedulableContext SC) {
        // Create an instance of your batch class
        Type batchType = Type.forName('AutoInsuranceUpdateExpiredBox');
        Schedulable batchInstance = (Schedulable)batchType.newInstance();

        // Schedule the batch to run daily at 1 AM
        String jobName = 'AutoInsuranceBatchJob';
        String cronExp = '0 0 1 * * ?'; // Daily at 1 AM

        // Schedule the Schedulable class
        System.schedule(jobName, cronExp, batchInstance);
    }
}*/


