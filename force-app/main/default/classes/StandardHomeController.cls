/**
 * Created by jahangirmohammad on 23/05/2022.
 */

public with sharing class StandardHomeController {
    @AuraEnabled
    public static List<User> getUserList() {
        List<User> userList = [SELECT Id, Name from User];
        return userList;
    }

}