//LIST

//create an empty list of integer => would like to store age of  my student 

list<integer> numbers = new List<Integer>();
numbers.add(24); // 0 index
numbers.add(43); // 1 index
numbers.add(22); // 2 index names.[2] give you index 2
system.debug('Numbers are'+numbers);

//create an empty list of string => would like to store the names of my students
list<string> names = new List<String> ();
names.add('Locol');
names.add('briana');
names.add('tonny');  
System.debug('Students names are'+names);
System.debug('Elements at index 2 is :' + names[2]); // names[2] give you index 2

// create an empty list of account => I would like to carry 2 account records 
list<account> accounts = new list<account>();
// go to org check your API name
Account acc1 = new Account();
//What ever you like to create field go to org check field API name
acc1.Name = 'Test Account Name';
acc1.AccountNumber = 'AbBA122';
acc1.Industry = 'BioTech';
accounts.add(acc1);
// Create Account 2
Account acc2 = new Account();
acc2.Name = 'Test Account 2';
acc2.AccountNumber ='911';
acc2.Industry = 'IT';
accounts.add(acc2);
System.debug('Account Are '+accounts);

//contains methods
list<string> names = new List<String> ();
names.add('Locol');
names.add('briana');
names.add('tonny'); 
//single line code add
list<string> names = new list<string>{'locol','briana','tony'};
//check birana is available in the names collection ?
Boolean isbriana =names.contains('briana');
system.debug('Is briana available '+isbriana);
//check mark available in the names collection
Boolean ismark = names.contains('mark');
system.debug('is mark available ' + ismark);

// get method
list<string> names = new list<string>{'locol','briana','tony'};
system.debug('1 st elements is ' +names[0]);
system.debug('2 nd elements is'+ names[0]);
//OR
system.debug('1 st elements is ' +names.get(0));
system.debug('2 nd elements is'+ names.get(1));

//equals method
list<string> names1 = new list<string>{'locol','briana','tony'};
list<string> names2 = new list<string>{'locol','briana','tony'};
list<string> names3 = new list<string>{'briana','mark'};

system.debug('names1 == names2'+names1.equals(names2));
system.debug('name1 == name 3'+names1.equals(names3));

// isEmpty
list<string> names1 = new list<string>{'locol','briana','tony'};
list<integer> numbers = new list<integer>();
system.debug('names is empty '+names1.isEmpty());
system.debug('numbers is empty '+numbers.isEmpty());

//sort method
list<string> names1 = new list<string>{'locol','briana','tony'};
System.debug('Befoe sorthing '+names1);
names1.sort();
System.debug('After sorthing'+names1 );

// size method 

list<string> names1 = new list<string>{'locol','briana','tony'};
system.debug('size of names1' +names1.size());
names1.add('Keki');
system.debug('new size of name1'+ names1.size());
