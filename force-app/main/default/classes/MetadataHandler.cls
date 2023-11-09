public  class MetadataHandler {
    // inherited class hangi class cagirisan o clas oluyor yani with sharing cagirirsan with sharing oluyor. 
    // it will call inherited calling class
     public with sharing class A{
        public void methodA(){

        }
     }
     public without sharing class B{
        public void methodB(){

        }
     }
     public inherited sharing class C {
        public void methodc(){

        }
     } 
     public class D {
        public void methodD(){

        }
     }
}