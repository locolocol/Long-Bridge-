// Time Methods

// new instance method
Integer hours = 6;
Integer minutes = 30;
Integer second = 24;
Integer millis = 354;

Time time1= Time.newInstance(hours, minutes, second, millis);
System.debug('Time ' + time1);

// hours, minutes , second methods

Time time1 = Time.newInstance(10,20, 30, 1400);
System.debug('Hour'+time1.hour());
System.debug('Minutes'+time1.minute());
System.debug('Second'+ time1.second());
System.debug('Milli sec' + time1.millisecond());

// add hours 
Time time1 = Time.newInstance(10,20, 30, 1400);
System.debug('Add hours '+ time1.addHours(6));
System.debug('Minutes Hours' +time1.addHours(-7));

// add minutes

Time time1 = Time.newInstance(10,20, 30, 1400);
System.debug('add minutes ' + time1.addMinutes(60));
System.debug('minus minutes'+ time1.addMinutes(-22));
