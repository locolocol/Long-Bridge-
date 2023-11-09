ParthThree acc = new ParthThree();
acc.accinfo();

ParthThree acc2 = new ParthThree();
list<account> allacc = acc2.fethallacc();

ParthThree partacc= new ParthThree();
list<account> accType = partacc.returnlist('Prospect');

ParthThree opp = new ParthThree ();
opp.oppinfo('Closed Won');

ParthThree opp2 = new ParthThree();
opp2.oppLeadSource('Web','Closed Lost');

ParthThree opp3 = new ParthThree();
opp3.sumOpp();

ParthThree acc4= new ParthThree();
List<Account> acclist= acc4.accgetInfo('Closed Won');

ParthThree acc5 = new ParthThree();
list<account> acclist2= acc5.accgetconInfo();

ParthThree acc7 = new ParthThree();
acc7.getaccandoppinfo();