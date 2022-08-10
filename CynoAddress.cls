public with sharing class CynoAddress {
    public String firstLineOfAddress{get;set;}
    public String secondLineOfAddress{get;set;}
    public String city{get;set;}
    public String postCode{get;set;}
    public String state{get;set;}
    public String country{get;set;}
    public CynoAddress(String flofad, String sload, String city, String pcode, String state, String cntry){
        this.firstLineOfAddress = flofad;
        this.secondLineOfAddress = sload;
        this.city = city;
        this.postCode = pcode;
        this.state = state;
        this.country=cntry;
    }
}
