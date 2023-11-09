//MAP METHOD
//create empty empty map. key=> integer value => string

Map <Integer,String> students = new map <Integer, String>();
//key=> Roll No
//Value => student name
students.put(1,'John');
students.put(2,'Mike');
students.put(3,'Carolina');
system.debug(students);
students.put(1,'Satya');
system.debug(students);

//create an empty map. key =Id , value => account
map<integer,Account> Account = new Map<Id,Account>();

// keySet
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};
// we use set beacuse Id is Unique
Set<Integer> rollNos = students.keySet();
System.debug('roll numbers: ' + rollNos);

//values
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};

List<String> names = students.values();
System.debug(names);

//containsKey
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};

Boolean is2Exist = students.containsKey(2);
System.debug('Does coantain 2'+ is2Exist);
System.debug('Does contain 4'+students.containsKey(4));

//get(key) burada key deki value aliyorsun
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};
String name = students.get(3);
system.debug(name);
String name1=students.get(4);
system.debug(name1);

//equals Method
Map<Integer, String> students1 = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};

 Map<Integer, String> students2 = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};
system.debug('is equal'+students1.equals(students2));

//size
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};

integer whatissize =students.size();
system.debug('size of students'+whatissize);

//Isempty Method
Map<Integer, String> students1 = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};
 Map<Integer, String> students2 = new Map<Integer, String>();
Boolean check1= students1.isEmpty();
system.debug('is students 1 empty'+check1);
system.debug('is students 2 empty'+students2.isEmpty());