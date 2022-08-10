
public with sharing class CynoName {
    public String firstName;
    public String lastName;
    public String surName;
    public String middleName;
    public CynoName(String fName, String lName, String mName) {
        this.firstName = fName;
        this.lastName = lName;
        this.middleName = mName;
        this.surName = lName;
    }
}