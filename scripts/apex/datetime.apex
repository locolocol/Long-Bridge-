// Date time class &Methods

Date dt = Date.today();
Time tm = Time.newInstance(10, 20, 30, 400);
Datetime dtTime = Datetime.newInstance(dt, tm);
System.debug('date time '+ dtTime);

// new instance with Year . Months & Date
Datetime dtTime = Datetime.newInstance(2022, 5, 10);
System.debug('date time '+ dtTime);

// new Instance with Year , Months , hours , Min , Sec
DateTime  dtTime = Datetime.newInstance(2022, 5, 10, 10, 20, 30);
System.debug(dtTime);

// new instance with Long time
// it will count mili second from 1970
Long longtime = 1230000000L;
Datetime dtTime = Datetime.newInstance(longtime);
System.debug(dtTime);

// now method
Datetime dtTime =Datetime.now();
System.debug(dtTime);

// add days
DateTime dtTime = Datetime.now();
System.debug('Add dys ' + dtTime.addDays(3));

//add months
Datetime dtTime = Datetime.now();
Datetime addmonths = dtTime.addMonths(3);
System.debug('Add months' + addmonths);

// add Years
DateTime dtTime = Datetime.now();
System.debug('add years ' + dtTime.addYears(1));

//add hours
DateTime dtTime = Datetime.now();
System.debug('add second ' + dtTime.addHours(1));

//add sec
DateTime dtTime = Datetime.now();
System.debug('add second ' + dtTime.addSeconds(3));


