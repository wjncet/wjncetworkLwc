global class ScheduleTestBatch  implements Schedulable {
    private final Integer BATCH_SIZE = 200;
    
    global void execute(SchedulableContext ctx) {
        
        TestBatch batch = new TestBatch();
        Database.executebatch(batch, BATCH_SIZE);
        
    }
}