public class AgentPerformanceBatchSchedule implements Schedulable{
    public void execute (SchedulableContext SC) {
        AgentPerformanceSummaryBatch batchInstance = new AgentPerformanceSummaryBatch();
        Database.executeBatch(batchInstance);
}
}
