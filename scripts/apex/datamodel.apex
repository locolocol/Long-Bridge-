// DATA MODEl

//SOQL has 5 Parts
1. SELECTION OF FIELD
2. FROM WHAT OBJECT
3. FILTERING THE RECORDS
4. ORDERING THE INFORMATION
5. LIMITING THE RECORDS


//select top 10 Accounts whose industry belongs to Automotive and order the resutls bby their type

[SELECT Name,AccountNumber,Industry, Rating, type 
 FROM Account where industry ='Automobile'
 AND TYPE !=null
 ORDER By TYPE 
 LIMIT 10];

[SELECT Id, Name
FROM Account
where name like '%and%'];

[SELECT Id,name, phone
From Account
Where phone != null 
and Acc !=null];

[Select id,name, phone
from Account 
where (phone!- null or Website != null)
and AccountNumber != null];

// get all the contact whose phone is null
list<contact> contacts = [Select FirstName, lastName, Title, phone
                        from contact where Phone =null];

//collection always right side which is contact
for(contact con:contacts){
    con.phone='911911';
}

//Binding of  data from variable means If you hava a data in a variable along with that variable name need to use =: 
string accType = 'Prospect';

list<account> accounts = [Select id,name
                        From Account
                        Where Type =:accType]

//Select allowanced whose amount is greater than 2000
// We Create Allowance Custom Object
List<Allowance__c> allowances = [select Name,Allowance_Type, Amount__c , Status__c
                                From Allowance__c
                                where amount >2000 ];
                                
// SOQL RelationShips
Standard RelationShips
Account <=> contact
Account => Parent
Contact => Child

// Child to Parent INFORMATION while you use dote Account. dote means you build bridge to Account Object
list<contact> contacts = [Select id, FirstName, lastName,Account.Name,Account.Type,Account.Industry
                         From Contact 
                         Where Phone !=Null];

// Child to Parent Information : Custom Relationship
// we use .r means relation
Allowance <=> Contact
Contact => Master
Allowance__c  =>  Child
list<Allowance__c> allowances = [ Select Name,Allowance_Type__c , Amount__c, Contact__r.lastName, Contact__r.Title
                                From Allowance__c
                                Where Amount__c >2000 ]

// Parent to Child Information : Standard RelationShip
Account <=> contact
Account => Parent
Contact => Child
// you always go to child which is contact go to fields and relation ship FIND relationship here is AccountName here is "Contacts"
List<account> accounts = [Select Name, type (Select firstname.lastname from Contacts)        
                        From Acccount
                        Where Industry ='Biotechonology'];

// Parent to Child Information : Custom RelationShip
// You always go to Child which is Allowance__c here fields and relation ship Find relationshop and look for right buttomChild Relationship Name Allowances

Allowance <=> Contact
Contact => Master
Allowance__c  =>  Child
list<contact> contacts = [Select FirstName, lastname (Select Id, Allowance_Type__c From Allowance__r )
                         From Contact
                         Where lastName!= null ];
               
// SOSL//

1. Find for something
2. In what all fields
3. Result Part
// here is only name fields
[FIND{Joe Smith}
IN name fields
Returning lead(Firstname,lastName), Contact(FirstName, lastName)];

// Here is all fields
[FIND{Joe Smith}
IN ALL fields
Returning lead(Firstname,lastName), Contact(FirstName, lastName)];
// butun quesry once butun list ti getiriyor sonra object leand and the contact
list<list<sObject>> records = [Find{FIND{Joe Smith}
                               IN ALL fields
                               Returning lead(Firstname,lastName), Contact(FirstName, lastName)}];

list => 0. lead 1. Contactlist 
List => All lead, All contact
//Console example 
FIND {test}
In all fields
Returning Account(name), Contact(FirstName, LastName), Lead(Firstname, lastName)