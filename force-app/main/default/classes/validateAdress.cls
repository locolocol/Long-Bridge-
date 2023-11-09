public class validateAdress {
     public void validateHomeAddress(){
        // define
        String HouseName ='Locol House';
        /* declare 
        String housename; */
        String StreetName ='lale street unit 1 ';
        String CityName='Okland';
        String Statename ='Texas';
        String StateISO ='TX';
        String CountryName ='United States America';
        String CountryISOCode= 'USA';
        //i
        Integer charcount = StreetName.length();
        System.debug('Number of Character In the Street ' + charcount);
        System.debug('Number of Character In the Street '+StreetName.length());
        //ii
        Boolean checkchar = StreetName.contains(HouseName);
        System.debug('Checking the charter ' + checkchar);
        //iii
        Boolean checkchar2 = StreetName.containsAny(StateISO);
        System.debug('Checking the second character ' + checkchar2);
        //iv
        String convertoletter1= StateISO.toUpperCase();
        String converttoletter2 = CountryName.toUpperCase();
        String convertoletter3 = CountryISOCode.toUpperCase();
        String convertoletter4 = CityName.toLowerCase();
        String convertoletter5 = Statename.toLowerCase();
        System.debug('We convert to uppercase '+ ' ' +convertoletter1+' '+ converttoletter2 + ' ' + convertoletter3);
        System.debug('We convert to lowercase ' + ' '+ convertoletter4 + ' '+ convertoletter5);
        //v 
        String allhouseinfo = HouseName + ' ' + StreetName;
        System.debug('We concatenate ' + allhouseinfo);
        //altenative 
        System.debug('We concatenate ' + HouseName+ ' '+ StreetName);           

     }
}