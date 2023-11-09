SampleClass demo1 = new SampleClass();
demo1.printString('this is the 1st return type');

SampleClass demo2 = new SampleClass();
system.debug(demo2.hasSampleString('testmi acaba'));

// this is the 1th way to sum
SampleClass demo3 = new SampleClass();
demo3.sum(new list<integer>{3,4});
// this is second way to sum

SampleClass demo2 = new SampleClass();
list<integer> mynumbers = new List<integer>{3,7};
/* or myNumbers.add(3);
myNumbers.add(7);*/
Integer totalsum=demo2.sum(mynumbers);
system.debug('total is '+totalsum);

SampleClass sample  = new SampleClass();
system.debug(sample.sampleString);
// how to call static variable and execute
system.debug(SampleClass.myStaticString);




 Student {
    name;
    mobile;
    email;
    address;
    standard;
    static schoolname;
    static principal;
 }

 Student std = new Student();

 AccountController acc = new AccountController();
 acc.processAccount();