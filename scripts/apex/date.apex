//DATE CLASS METHODS

Integer year=1977;
Integer month = 4;
Integer day = 20;

Date dt =Date.newInstance(year, month,day);
System.debug ('Date value is ' + dt);
// today method
Date dt = Date.today();
System.debug('Today date is '+ dt);

//add days method 

Date dtToday = Date.today();
Date dtToday10 = dtToday.addDays(10);
System.debug('Date has been add 10 days '+ dtToday10);
Date dtMinus10 = dtToday.addDays(-10);
System.debug('Today days miues 10'+ dtMinus10);

//add Months
Date today = Date.today();
System.debug('Today days ' + today);
Date addmonths = today.addMonths(2);
System.debug('Add months to today '+ addmonths);
Date minutesMonths = today.addMonths(-3);
System.debug('Minutes months '+ minutesMonths);

//add years
Date today = Date.today();
System.debug('Today days '+ today);
Date addyear = today.addYears(2);
System.debug('2 years later'+ addyear);
Date minutesYears = today.addYears(-3);
System.debug('3 years take a way'+ minutesYears);

//days between Method 
Date today = Date.today();
system.debug ('Today date is '+ today);
Date todayadd = today.addDays(55);
Date today2 = Date.newInstance(2024, 11, 2);
Integer days = today.daysBetween(todayadd);
System.debug('Days between one'+ days);
Integer days2= today.daysBetween(today2);
System.debug('Days between two '+ days2);

// Momths between

Date date1 = Date.today();
Date date2 = Date.newInstance(2024, 13, 2);
System.debug('Months between '+ date1.monthsBetween(date2));

//date months years method
Date date1 = Date.today();
System.debug('today '+date1.day());
System.debug('Months' + date1.month());
System.debug('Year '+date1.year());
