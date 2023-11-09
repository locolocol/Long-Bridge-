public class playingWithDates {
    public void printDateOutput(){
        //1
        Date today = Date.today();
        System.debug('Today Date ' + today);
        System.debug('Today Date alternative ' + Date.today());
        //2
        Date dt1 = Date.newInstance(2789, 10, 5);
        System.debug('new instance date '+ dt1);
        //3
        Date dt2 = Date.newInstance(1459, 3, 4);
        System.debug('Giving Date '+ dt2);
        // 4 
        Integer yearInt = 1944;
        Integer monthInt = 12;
        Integer dayInt = 2;
        //5   
        Date dt3 = Date.newInstance(yearInt, monthInt, dayInt);
        System.debug('Giving Date '+ dt3);      
        //6
        Date today1 = Date.today();
        System.debug('67 Days From today '+today1.addDays(67));
        //7
        Date today2 = Date.today();
        System.debug('7 months earlier'+ today2.addMonths(-7));
        //8
        Date today3 = Date.today();
        System.debug('895 days earlier than today '+today3.addDays(-895));
        //9
        Date today4 = Date.today(); 
        System.debug('59 Years earlier than today' + today4.addYears(-59));
        //10
        Date today5 = Date.today();
        System.debug('278 years after today ' + today5.addYears(-278));       

    }
    
}