public with sharing class iterationExercise {
    public void getMultiplicationTable(integer inputNum){
       integer i=0;
       //for(integer i=1; i<=10; i++)
       for(i=1; i<=10; i++){
        system.debug(i+ ' *' +inputNum + ' ='+ i*inputNum);
       } 
    }
    public Integer getPerfectAverage(Integer num1, Integer num2){
       Integer avg;
       Integer sum = 0, count=0;
       for(integer i=num1; i<=num2; i++){
        sum= sum+i;
        count++;       
       }
       avg = sum / count;
       system.debug('Average of '+num1+' and '+ num2 +'is' + ' '+ avg);
       return avg;
    }
}