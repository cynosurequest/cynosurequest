
public class CynosureGenericUtility {
    public static CynoParent getRecordWithMoreSalary(CynoParent firstRecord, CynoParent secondRecord) {
        System.debug('@@@@@@ 4 firstRecord @@@@@@@ '+firstRecord);
        System.debug('@@@@@@ 5 secondRecord @@@@@@@ '+secondRecord);

        if(firstRecord.yearlyGrossSalary == NULL || firstRecord.yearlyGrossSalary == 0) {
            System.debug('@@@@@@ 8 @@@@@@@ ');
            return secondRecord;
        }
        if(secondRecord.yearlyGrossSalary == NULL || secondRecord.yearlyGrossSalary ==0){
            System.debug('@@@@@@ 9 @@@@@@@ ');
            return firstRecord;
        }
        if(firstRecord.yearlyGrossSalary > secondRecord.yearlyGrossSalary) {
            System.debug('@@@@@@ 10 @@@@@@@ ');
            return firstRecord;
        }
        System.debug('@@@@@@ 11 @@@@@@@ ');
        return secondRecord;
    }
}