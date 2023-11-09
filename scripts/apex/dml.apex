// Data Manipulation languages

//Insert

public void createAccount(){
    Account acc = new Account();
    acc.Name = 'test Acc 1';
    acc.Type = 'Prospect';
    acc.Industry ='chemical';
    insert acc;
}
public void createAllowance(){
    //there is a master detail you must mention that other wise wont be inserted
    Allowance__c allowance = new Allowance__c();
    allowance.Allowance_Type__c ='Internet Allowance';
    allowance.Amount__c = 2000.00
    allowance.Status__c = 'Submitted';
    allowance.Contact__c = '003388833nananna';
    insert allowance;
}
// if I want to create 2 Accounts

public static createAccount(){
    list<account> accounts = new List<account>();
    Account acc1 = new Account();
    acc.Name = 'test Acc 1';
    acc.Type = 'Prospect';
    acc.Industry ='chemical';
    //insert acc1;
    accounts.add(acc1);

    Account acc2 = new Account();
    acc.Name = 'test Acc 1';
    acc.Type = 'Customer';
    acc.Industry ='Biochemical';
    //insert acc2;
    accounts.add(acc2);
    insert accounts;
}
public void createContacts(Integer num){
    list<contact> contacts = new List<contact>();
    for(integer i=0; i<num; i++){
        contact con = new Contact();
        con.FirstName = 'Test '+i;
        con.LastName ='Test'+i;
        contacts.add(con);
    }
    insert contacts;
}

//UPDATE 

public void updateAccounts(){
    list<account> accounts = [select Id, AccountNumber From account Where AccountNumber = null];
    for(acccount acc : accounts){
        acc.AccountNumber= 'accc12334';
    }
    //here we updates one time with updates accounts;
    update accounts;
}
public void updateAccounts(){
    list<account> accounts = new Account();
    // call this soql for loop
     for (account acc :[select Id, AccountNumber From account Where AccountNumber = null]){
     acc.AccountNumber='Acc112233';
     accounts.add(acc);
}
update accounts;
}
// DELETE
public void deleteAccounts (){
    list<account> accounts = [Select id from account where phone = null];
    delete accounts;
}
//UNDELETE
public void undeleteAccounts(){
    // ALL ROWS will go to recyle bin check it 
    list<account> accounts = [Select id from account where phone = null ALL ROWS];
    undelete accounts;
}