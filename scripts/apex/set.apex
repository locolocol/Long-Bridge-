//SET UP METHODS

//create an empty set of Integer
set<Integer> numbers = new set<integer>();
numbers.add(10);
numbers.add(40);
numbers.add(20);
system.debug(numbers);

//create an empty set of string
set<string> names = new Set<String>();
names.add('Mike');
names.add('John');
names.add('Saschin');
names.add('John');

//create an empty set of sObject
set<Account> accounts = new set<Accounts>();
Accounts acc1 = new Accounts();
acc1.Name = 'Test Account 1';
acc1.Type = 'Prospect';
accounts.add(acc1);

Acccounts acc2 = new Accounts();
acc2.Name = 'Test Account 2';
acc2.Type = 'Customer';
accounts.add(acc2);

//contains method
set<String> names = new set<string>{'John', 'Smith', 'Mike'};
Boolean isMikeExist = names.contains('Mike');
system.debug(' is mike exist ? '+ isMikeExist);
Boolean isBlendaExist= names.contains('Blenda');
system.debug('is blenda exist ? '+isBlendaExist);
system.debug('is john exist'+names.contains('John'));

// equals method
set<string> set1= new Set<String>{'John', 'Smith', 'Mike'};
set<string> set2 = new Set<string>{'John', 'Smith', 'jack'};
Boolean isEqual = set1.equals(set2);
system.debug('is set one equal set 2 ?'+ isEqual);

//isEmpty 
Set<String> set1 = new Set<string>();
Set<String> set2 = new Set<String>{'Emilio'};
boolean isEmpty = set1.isEmpty();
system.debug(' is set one is empty ' + isEmpty);
system.debug('is set2 is empty'+set2.isEmpty());

//size method
Set<String> set2 = new Set<String>{'Emilio'};
integer size = set2.size();
system.debug('set2 size '+ size);
system.debug('set2 size' + ' ' +set2.size());





