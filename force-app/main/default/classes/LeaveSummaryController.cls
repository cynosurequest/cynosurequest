
public class LeaveSummaryController {
    @AuraEnabled
    public static List<User> getUsersReportingToMe() {
        Id myId = UserInfo.getUserId();
        return [Select Id, userName, firstName, lastName, email , ManagerId, Manager__r.Name, Start_Date__C
                From User where ManagerId =: myId]  ;
    }
}

