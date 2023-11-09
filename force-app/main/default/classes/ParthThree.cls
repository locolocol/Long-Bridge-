public with sharing class ParthThree {
    public void accinfo(){
        list<Account> acc = [SELECT Id, Name, AnnualRevenue, Type, AccountSource FROM Account];
        system.debug(acc);
    }
    //option 2 same question
    public list<account> fethallacc(){
        list<account> acc2 = [SELECT Id, Name, AnnualRevenue, Type, AccountSource FROM Account];
        system.debug(acc2);
        return acc2;
    }
    public list<account> returnlist(string AccountType ){
        list<account> acc3 = [Select id,Phone,Name  from account where type =:AccountType ];
        system.debug(acc3);
        return acc3;
    }
    public void oppinfo(string stageType){
        List<Opportunity> opp =[select AccountId, amount,name,stagename from opportunity where StageName=:stageType ];
        system.debug(opp);
    }
    public void oppLeadSource(string leadsource1, string StageType){
        list<opportunity> leadS= [select id, LeadSource,StageName from Opportunity where LeadSource =:leadsource1 and StageName=: StageType];
        system.debug(leadS);
    }
    public Decimal   sumOpp(){
        Decimal sum=0;
        List<Opportunity> oppC= [select id, Amount from Opportunity];
        for (Opportunity opp:oppC){
            sum=sum+opp.Amount;
            //sum +=opp.Amount;
        }
        system.debug(sum);
        return sum;    
    }
    public list<account>   accgetInfo(string stageInfo){
        list<Account> acc4 =[select id,Name, (select id,stagename from Opportunities where StageName =: stageInfo) from Account];
        system.debug(acc4);
        return acc4;
    }
    public list<account> accgetconInfo(){
        list<account> acc5 = [select id,(select id from contacts) from account];
        system.debug(acc5);
        return acc5;
    }
    public void getaccandoppinfo(){
        list<account> acc6= [select id,annualrevenue,type,Name from account where type ='Customer-Direct'];
        system.debug('size of acc6'+acc6.size());
        for (account accs:acc6){
            system.debug('Account name is '+accs.name);
            system.debug('Annual revenue is '+accs.annualrevenue);

        list<Opportunity> opplist= [select id,name,amount,StageName from Opportunity where StageName = 'Closed Won'];
        for(opportunity opp:opplist){
            system.debug('Opp Name '+opp.name);
            system.debug('Amount is '+opp.amount);
        }
        }
    }

}
