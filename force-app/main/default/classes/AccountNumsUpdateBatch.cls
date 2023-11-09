public with sharing class AccountNumsUpdateBatch implements Database.Batchable<sObject>, Database.stateful {
    private final string DEF_ACC_Num = 'ABC12456';
    private Integer recordProcessed = 0;

    public Database.QueryLocator start (Database.BatchableContext  bc){
      String query = 'SELECT id, AccountNumber From Account Where AccountNumber = null ';
    }
     public void execute (Database.batchableContext bc, list<sObject> scope){
        // scope convert yapiyorsun
        List<Account> accounts = (list<Account>)scope;
        for(Account acc: accounts){
            acc.AccountNumber = DEF_ACC_Num;
         }
        update accounts;
        recordProcessed = recordsProcessed+accounts.size();

     }
     public void finish(Database.BatableContext bc){

     }
}