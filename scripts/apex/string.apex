//equals case sensetive
String str1= 'SalesForce';
String str2= 'SalesForce Developer';
Boolean outcome = str1.equals(str2);
System.debug('OutCome:' + outcome);

//equalsIgnoreCase not case sensetive
String str1= 'SalesForce developer';
String str2= 'SalesForce Developer';
Boolean outcome = str1.equalsIgnoreCase(str2);
System.debug('OutCome:' + outcome);

//contains method also case sensetive 
String mainstr = 'Salesforce Developer';
String substr = 'Dev';
Boolean outcome = mainstr.contains(substr);
System.debug(outcome);

//containsIgnorecase method also Not a case sensetive 
String mainstr = 'Salesforce Developer';
String substr = 'Ev';
Boolean outcome = mainstr.containsIgnoreCase(substr);
System.debug(outcome);

//containsAny  if any character exist return true 
String mainstr = 'I live in Dallas';
String substr = 'liD';
Boolean outcome = mainstr.containsAny(substr);
System.debug(outcome);

//length 
String str= 'I live here USA';
Integer length = str.length();
System.debug(length);

// trim

String strBefore ='   SF Academy';
integer lengthBefore = strBefore.length();
System.debug('Length before Trimming ' + lengthBefore);
String strAfter = strBefore.trim();
integer lengthAfter = strAfter.length();
System.debug('Length After '+ lengthAfter);

// toLowerCase method
string strbefore = ' I AM a SalesForce DeveLoper';
String strafter =strbefore.toLowerCase();
String strupper = strbefore.toUpperCase();
System.debug('Lower Case string '+ strafter);
System.debug('Upper Case String '+ strupper);
