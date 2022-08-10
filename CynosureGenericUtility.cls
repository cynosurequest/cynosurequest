public class CynosureGenericUtility {
    public static CynoParent getRecordWithMoreSalary(CynoParent firstRecord, CynoParent secondRecord) {
        System.debug('@@@@@@ 4 firstRecord @@@@@@@ '+firstRecord);
        System.debug('@@@@@@ 5 secondRecord @@@@@@@ '+secondRecord);

        if(firstRecord.yearSalary == NULL || firstRecord.yearSalary == 0) {
            System.debug('@@@@@@ 8 @@@@@@@ ');
            return secondRecord;
        }
        if(secondRecord.yearSalary == NULL || secondRecord.yearSalary ==0){
            System.debug('@@@@@@ 9 @@@@@@@ ');
            return firstRecord;
        }
        if(firstRecord.yearSalary > secondRecord.yearSalary) {
            System.debug('@@@@@@ 10 @@@@@@@ ');
            return firstRecord;
        }
        System.debug('@@@@@@ 11 @@@@@@@ ');
        return secondRecord;
    }
    public static CynoAddress getDifferentAddress(CynoAddress currentAddress, CynoAddress permAddress) 
    {
        if(currentAddress != null && permAddress != null)
        {
            if(permAddress != currentAddress)
            {
                return permAddress;
            }
            else
            {
                return currentAddress;
            }
        }
        
        return null;
    }
    public static CynoAddress getSameAddress(CynoAddress currentAddress, CynoAddress permAddress) 
    {
        if(currentAddress != null && permAddress != null)
        {
            if(permAddress == currentAddress)
            {
                return permAddress;
            }
            else
            {
                return currentAddress;
            }
        }
        
        return null;
    }
    
}

