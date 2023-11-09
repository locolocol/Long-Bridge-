public  class calculator {
     public Decimal dynamicCallulation (decimal num1, decimal num2 , string operation){
        decimal result;
        if(operation == 'Addition'){
            system.debug(result =num1+num2);
        }
        if(operation.equals('Substraction')){
            system.debug(result = num1-num2);
        }
        if(operation.equals('Devision')){
            system.debug(result=num1/num2);
        }if(operation.equals('multiplication')){
            system.debug(result=num1*num2);
        }
        return result;
     }
}