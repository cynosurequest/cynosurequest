public with sharing class CynoStudentAdmissionHandler {

    public set<CynoStudent> studentsSet{get;set;}
   

    public CynoStudentAdmissionHandler(){

        this.studentsSet = new set<CynoStudent>();
      
    }
    public List<CynoStudent> getListOfStudsWhoseMothersSalMoreThanFathersSal() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.yearSalary);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.yearSalary);
            CynoParent highestParentInSal = CynosureGenericUtility.getRecordWithMoreSalary(mother, father);
            System.debug('@@@@@@@@ 13 @@@@@@@ Result '+highestParentInSal);
            if(highestParentInSal ==  mother) {
                System.debug('@@@@@@@ 13 @@@@@@ highest parent '+highestParentInSal);
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudsWhoseFatherssSalMoreThanMothersSal() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.yearSalary);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.yearSalary);
            CynoParent highestParentInSal = CynosureGenericUtility.getRecordWithMoreSalary(mother, father);
            System.debug('@@@@@@@@ 13 @@@@@@@ Result '+highestParentInSal);
            if(highestParentInSal ==  father) {
                System.debug('@@@@@@@ 13 @@@@@@ highest parent '+highestParentInSal);
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseMotherIsUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.occupation);
          
            if(mother.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseFatherIsUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+father.occupation);
          
            if(father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseParentsAreUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.occupation);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.occupation);

            if(mother.occupation == '' && father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsWhoseParentsAreEmployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.occupation);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.occupation);
            
            if(mother.occupation != '' && father.occupation != '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getListOfStudentsIfAnyOfParentsAreUnemployed() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.occupation);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.occupation);

            if(mother.occupation == '' || father.occupation == '') {
                studentsList.add(student);
            }
        }
        return studentsList;
    }
    public List<CynoStudent> getAddressOfBothCurrentAndPermenantAddressDifferent() 
    {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoAddress currAdd = student.currentAddress;
            CynoAddress perAdd = student.permanentAddress;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+currAdd);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+perAdd);
            CynoAddress different = CynosureGenericUtility.getDifferentAddress(currAdd, perAdd);
            System.debug('@@@@@@@@ 13 @@@@@@@ Result '+different);
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
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoAddress currAdd = student.currentAddress;
            CynoAddress perAdd = student.permanentAddress;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+currAdd);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+perAdd);
            CynoAddress Unique = CynosureGenericUtility.getSameAddress(currAdd, perAdd);
            System.debug('@@@@@@@@ 13 @@@@@@@ Result '+Unique);
            if(Unique != null){
                studentsList.add(student);  
            }
             
        }
        return studentsList;
}
public void removeListOfStudentsWhoHaveNotGivenPermanentaddress(CynoStudent student) {
    if(student.permanentAddress == NULL){
        studentsSet.remove(student);
    }else{
        studentsSet.add(student);
    }
}
public void removeListOfStudentsWhoHaveNotGivenCurrentaddress(CynoStudent student) {
    if(student.currentAddress == NULL){
        studentsSet.remove(student);
    }else{
        studentsSet.add(student);
    }
}
   
    public void addStudent(CynoStudent student) {

      this.studentsSet.add(student);
      
    }
    public void removeStudent(CynoStudent student) {
        
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
    public Integer getListOfStudentsMotherSalaryMoreThanFather(Decimal salaryThreshold) {
        return 0;
    }
    public Decimal getTotalSalaryOfMother(){
    Decimal  totalSalary = 0;
        for(CynoStudent student:studentsSet){
            CynoParent mother = student.mother;
            totalSalary = totalSalary + mother.yearSalary;
        }

        return totalSalary;
    
    }
    
}
