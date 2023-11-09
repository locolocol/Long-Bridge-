public  class listClass {
     public static void myList(){
        list<string> colourList = new list<string>();
        colourList.add('Yellow');
        colourList.add('Red');
        colourList.add('Black');
        colourList.add('White');
        colourList.add('Purple');
         system.debug('my list'+colourList);
         system.debug('size of list'+colourList.size());
         system.debug('is red color in the list '+colourList.contains('Red'));
         system.debug('last element '+colourList.get(4).toUpperCase());
         string listOfString = colourList.toString();
         system.debug('String list ' + listOfString);
         list<string> colourCodesList = new list<string>{'#FFFF00'+'#FF0000'+ '#000000'+ '#FFFFFF'+ '#800080'};
         system.debug(colourCodesList);
         system.debug('If two list equal or not '+colourList.equals(colourCodesList));
         colourList.addAll(colourCodesList);
         system.debug('New color List'+colourList);   
     }
}