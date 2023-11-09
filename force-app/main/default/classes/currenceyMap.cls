public with sharing class currenceyMap {
    public static void currencyExchange(){
        map<string, Decimal> worldcurrency = new Map <string, Decimal>();
        worldcurrency.put('AUD',0.73);
        worldcurrency.put('CAD',0.78);
        worldcurrency.put('EUR',1.13);
        worldcurrency.put('NZD',0.68);
        worldcurrency.put('INR',0.013);
        system.debug(worldcurrency);
        //all values 
        system.debug(worldcurrency.values());
        system.debug(worldcurrency.get('AUD'));
        //all key set
        system.debug(worldcurrency.keySet());
        system.debug(worldcurrency.containsKey('SAD'));

        set<string> keys = worldcurrency.keySet();
        set<string> List1 = new set<string>();
        set<string> list2 = new set<string>();

        for(string eachkey :keys){
            if(worldcurrency.get(eachkey) >=1){
                List1.add(eachkey);
            }else{
                list2.add(eachkey);
                }
        } 
        system.debug('list 1 '+List1);
        system.debug('List 2'+list2);     
    }
}