public with sharing class Student {
    public static String school = 'Oxford Univertiy';
    public static String principal = 'Locol Kaya';
    // these are changes that why non static called varies
    public String firstname;
    public String lastname;
    public Integer age;
    public String address;
    public Integer stdClass;

//if you like to access any static variable your class will be static also
   public static String getSchool(){
    return school;
   }
   public static String getPrincipal(){
    return principal;
   }
   public string getstudentName(){
    return firstname + ' ' + lastname;
   }
}