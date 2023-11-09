students demo1 = new students();
demo1.firstname='John';
demo1.lastname= 'Miken';
demo1.classyear=1977;
demo1.majorstream='Math';
string major= demo1.generateReport();
system.debug('major information'+' '+  major); 

/* we need to check this one 
students demo = new students{firstname = 'Helan' , lastname = 'Billen', classyear = 1988, majorstream = 'english'};
string major2 = demo.generateReport();
system.debug('major information ' + major2);*/