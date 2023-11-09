public   class Car {
    Boolean isAvailable = true;
    String carType= 'SUV';
    String brand ='BMW';
    Integer seatingCapacity=7;
 
     public void switchOn(){      

        system.debug('Start the car');
     }
     public Integer changeGear(Integer currentGear){
        return changeGear+1;
     }
     public String getFullName(){
        String firstname = 'Locol';
        String lastname = 'Academy';
        string fullname=firstname+lastname;
        return fullname;
        system.debug('fullname');
     }
} 



