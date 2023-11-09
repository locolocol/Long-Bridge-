//Access Modifier => Public , glocal
// ClassName Camel Case => Take some meaning name



public class SampleClass {
  // you can have same as class name 
  // but only you can do initialation bu return type
  public String sampleString;
  public static string myStaticString = 'This is my static string';

  public SampleClass(){
    sampleString = 'This is for Sample String';
  }

 //1. Access Modifier => private , public, global    
 //2. Return Type => What this method is gonna retur
 //3. Method Name => Camel casing. Some Menaingfull name
 public void printString(string input){
    system.debug(input);
 }
 // if you want to return some thing  what every you return data type its a return type such as boolean
 public Boolean hasSampleString( string checkString){
   Boolean hasSample = checkString.containsIgnoreCase('Sample');
   return hasSample;
 }
 //if  i want to do anything about element available in collection
 public integer sum(list<integer> numbers){
   integer sum=0;
     for(integer num:numbers){
        sum= sum+num;
        
     }
     return sum;
 }
 public Integer sum(integer a, integer b){
  integer sum=a+b;
  return sum;
 }
 public Integer sum(integer a, integer b,integer c){
  integer sum=a+b+c;
  return sum;
}
}