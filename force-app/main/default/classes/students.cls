public  class students {
    public String  firstname;
    public String lastname;
    public integer  classyear;
    public string  majorstream; 

    public string generateReport() {
    System.debug('Report Generated for '+ firstname + ' '+ lastname + ' '+ classyear +' '+  majorstream);
    return majorstream;
    }
}