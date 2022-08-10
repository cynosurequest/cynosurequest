public with sharing class CynoStudentAdmisionsHandler {

public Set<CynoStudent> studentsSet {get;set;}

public CynoStudentAdmisionsHandler() {
    this.studentsSet = new Set<CynoStudent>();
}
public void addStudent(CynoStudent student) {
    this.studentsSet.add(student);
}
public void removeStudent(CynoStudent student) {
    this.studentsSet.remove(student);
}
public Integer getStudentCount() {
    return 0;
}
public  Integer getWorkingMothersCount()  {
    return 0;
}
public Integer getWorkingFathersCount() {
    return 0;
}
public Decimal getTotalParentsSalaryOfStudent(CynoStudent student) {
    return 0;
}
public Integer getStudentCountLessThanSalary(Decimal salaryThreshold) {
    return 0;
}
public Integer getHowManyStudentsShouldGetDiscountOnParentsSalary(Decimal salaryThreshold) {
    return 0;
}
public Integer getTotalSalaryofMothers(){
    Integer totalSalary = 0;
    for(CynoStudent stud : studentsSet){
        CynoParent mother = stud.mother;
        totalSalary = totalSalary + mother.yearSalary;
    }
    return totalSalary;
}
//list
public List<CynoStudent> getStudentsMothersSalaryIsMoreThanFathersSalary( ){
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 1 Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@ 1  mother '+mother);
            System.debug('@@@ 1  father '+father);

            System.debug('@@@ 1  mother salary '+mother.yearSalary);
            System.debug('@@@ 1  father salary '+father.yearSalary);
            CynoParent highestParentInSal = CynosureGenericUtility.getRecordsOfMoreThanSalary(mother, father);
            System.debug(' Result '+highestParentInSal);
            if(highestParentInSal ==  mother) {
                System.debug(' highest parent '+highestParentInSal);
                studentsList.add(student);
            }
        }
        return studentsList;
    }

    public List<CynoStudent> getListOfStudsWhoseFatherssSalMoreThanMothersSal() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 2  Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@ 2  mother '+mother);
            System.debug('@@@ 2  father '+father);

            System.debug('@@@ 2  mother salary '+mother.yearSalary);
            System.debug('@@@ 2  father salary '+father.yearSalary);
            CynoParent highestParentInSal = CynosureGenericUtility.getRecordsOfMoreThanSalary(mother, father);
            System.debug('Result '+highestParentInSal);
            if(highestParentInSal ==  father) {
                System.debug('@@@ 2 highest parent '+highestParentInSal);
                studentsList.add(student);
            }
        }
        return studentsList;
    }


    public List<CynoStudent> getListOfStudentsWhoseMotherIsUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 3 Student '+student);
            CynoParent mother = student.mother;
            System.debug('@@@ 3 mother '+mother);

            System.debug('@@@ 3  mother salary '+mother.occupation);
            
            if(mother.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseFatherIsUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 4  Student '+student);
            CynoParent father = student.father;
            System.debug('@@@ 4 father '+father);

            System.debug('@@@ 4 father salary '+father.occupation);
            
            if(father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseParentsAreUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 5 Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@ 5 mother '+mother);
            System.debug('@@@ 5 father '+father);

            System.debug('@@@ 5 mother salary '+mother.occupation);
            System.debug('@@@ 5 father salary '+father.occupation);

            if(mother.occupation == '' && father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseParentsAreEmployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 6 Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@ 6 mother '+mother);
            System.debug('@@@ 6 father '+father);

            System.debug('@@@ 6 mother salary '+mother.occupation);
            System.debug('@@@ 6 father salary '+father.occupation);
            
            if(mother.occupation != '' && father.occupation != '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsIfAnyOfParentsAreUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 7 Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@ 7 mother '+mother);
            System.debug('@@@ 7 father '+father);

            System.debug('@@@ 7 mother salary '+mother.occupation);
            System.debug('@@@ 7 father salary '+father.occupation);

            if(mother.occupation == '' || father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getAddressOfBothCurrentAndPermenantAddressDifferent() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 8 Student '+student);
            CynoAddress currAdd = student.currentAddress;
            CynoAddress perAdd = student.permanentAddress;
            System.debug('@@@ 8 mother '+currAdd);
            System.debug('@@@ 8 father '+perAdd);
            CynoAddress different = CynosureGenericUtility.getDifferentAddress(currAdd, perAdd);
            System.debug('@@@ 8 Result '+different);
            if(different != null){
                studentsList.add(student);  
            }
                
        }
        return studentsList;
}
public List<CynoStudent> getAddressOfBothCurrentAndPermenantAddressSame() 
    {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@ 9 Student '+student);
            CynoAddress currAdd = student.currentAddress;
            CynoAddress perAdd = student.permanentAddress;
            System.debug('@@@ 9 mother '+currAdd);
            System.debug('@@@ 9 father '+perAdd);
            CynoAddress Unique = CynosureGenericUtility.getSameAddress(currAdd, perAdd);
            System.debug('@@@ 9 Result '+Unique);
            if(Unique != null){
                studentsList.add(student);  
            }
                
        }
        return studentsList;
}

public Integer getSendEmailsToStudentsWhoseCurrentAddressIsEmpty(){
    return 0;

}
public Integer getSendEmailsToStudentsWhoseBillingAddressIsEmpty(){
    return 0;

}
public Integer getRemoveAllTheStudentsWhoHavenotGivenBillingAddress(){
    return 0;

}
public Integer getRemoveAllTheStudentsWhoHavenotGivenCurrentAddress(){
    return 0;

}
public Integer getRemoveAllTheStudentsWhoseBothTheParentsAreUnemployed(){
    return 0;

}
}
