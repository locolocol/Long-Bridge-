//1
integer rank =2 ;
if(rank==2){
   system.debug('I got my first rank');
}
//2
integer rank =6;
if(rank<=5){
    system.debug('hey i am in top 5');
}else {
    system.debug('himmm i am not on top 5');
}
//3
Integer rank = 6;
if(rank==1){
    system.debug(' I am on number 1');
}else if(rank==2){
    system.debug('oley i am number 2');
}else if(rank ==3){
    system.debug('oley i am number 3');
}else{
    system.debug('I am not on top 3');
}

//swtich statement
integer rank =2;
switch on rank{
    when 1{
        system.debug(' i am number 1');
    }
     when 2{
        system.debug(' i am number 2');
     }
      when 3{
        system.debug(' i am number 3');
      }
       when else{
        system.debug(' opss i am not top 3');
       }
}

// while
// print the numnber 1 to 3
integer num = 1;
While(num<=10){
    system.debug(num);
    num++;   
}

//do while loop
Integer num=1;
do{
    system.debug('Execute With out Check');
}while(num<=10);

//ftraditional for loop in for loop initilation is in the for loop integer num=1
for(Integer num=1; num<=10; num++){
    system.debug(num);
}

// for each loop bunun sagina varibale yaziyoruz ki listelesin :names
List<String> names = new List<String>{'James', 'John', 'Mike', 'Smith'};
for(String name :names){
    system.debug(name);
}

//Onemli Ornek
Map<Integer, String> students = new Map<Integer, String>{
    1 => 'John',
    2 => 'Mike',
    3 => 'Carolina'
};

for (Integer num : students.keySet()) {
    System.debug(students.get(num));
}

for (string name :students.values()){
    system.debug(name);
}