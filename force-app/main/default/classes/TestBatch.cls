public class TestBatch implements Database.Batchable<SObject>, Database.Stateful {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'select id ,name from account';
        return Database.getQueryLocator(query); 
    }
        public void execute(Database.BatchableContext BC, List<account> scope) {

    }
        public void finish(Database.BatchableContext BC) {
        }
}