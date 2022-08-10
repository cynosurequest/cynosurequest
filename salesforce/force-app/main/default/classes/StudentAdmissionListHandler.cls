public with sharing class StudentAdmissionListHandler {
    public List<CynoStudent> studentsList {get;set;}
    public Set<CynoStudent> studentsList1 {get;set;}
    
    public StudentAdmissionListHandler() {
        this.studentsList = new List<CynoStudent>();
        this.studentsList1 = new Set<CynoStudent>();

    }
    public void addStudentInList(CynoStudent student) {
      this.studentsList.add(student);
    }
 public List<CynoStudent> getLstOfStudsWhoseMothersSalMoreThanFathersSal() {
        List<CynoStudent> newStudentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsList) {
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            
        CynoParent motherSalMoreThanFather = CynosureGenericUtility.getRecordWithMoreSalary(mother, father);
             if(motherSalMoreThanFather ==  mother) {
                newStudentsList.add(student);
                System.debug('@@@@@ 08 @@@@@@ '+JSON.serialize(newStudentsList));
            }
        }
        return newStudentsList;
    
}
public List<CynoStudent> getLstOfStudsWhoseFathersSalMoreThanMothersSal() {
    List<CynoStudent> newStudentsList = new List<CynoStudent>();
    for(CynoStudent student : this.studentsList) {
        CynoParent mother = student.mother;
        CynoParent father = student.father;
        
    CynoParent motherSalMoreThanFather = CynosureGenericUtility.getRecordWithMoreSalary(mother, father);
         if(motherSalMoreThanFather ==  father) {
            newStudentsList.add(student);
            System.debug('@@@@@ 09 @@@@@@ '+JSON.serialize(newStudentsList));
        }
    }
    return newStudentsList;

}

public List<CynoStudent> getLstOfStudsWhoseMotherIsUnEmployed() {
    List<CynoStudent> newStudentsList = new List<CynoStudent>();
    for(CynoStudent student : this.studentsList) {
        CynoParent mother = student.mother;
        if (mother.unEmployee == true) {
            newStudentsList.add(student);
            system.debug('@@@34@@@'+newStudentsList);
        }
        
    }

    return newStudentsList;
}

public List<CynoStudent> getLstOfStudsWhoseFatherIsUnEmployed() {
    List<CynoStudent> newStudentsList = new List<CynoStudent>();
    for(CynoStudent student : this.studentsList) {
        CynoParent father = student.father;
        if (father.unEmployee == true) {
            newStudentsList.add(student);
            system.debug('@@@38@@@'+newStudentsList);
        }
        
    }

    return newStudentsList;
}
public List<CynoStudent> getLstOfStudsWhosePermanentAddressIsDifferFromCurrentAddress(){
    List<CynoStudent> newStudentList = new List <CynoStudent>();
    for(CynoStudent student : this.studentsList){
        CynoAddress permanentAddress = student.permanentAddress;
        CynoAddress currentAddress = student.currentAddress;
        
CynoAddress differentAddress = CynosureGenericUtility.getRecordDifferentAddress(permanentAddress,currentAddress);
        if(differentAddress == permanentAddress){
            newStudentList.add(student);
        system.debug('@@@30@@@'+newStudentList);
        }
    }
    
    return newStudentList;
}

public List<CynoStudent>getLstOfStudsWhoHaveSameAddressAsPermanentandCurrentAddress(){
    List<CynoStudent> newStudentList = new List <CynoStudent>();
    for(CynoStudent student : this.studentsList){
        CynoAddress permanentAddress = student.permanentAddress;
        CynoAddress currentAddress = student.currentAddress;
        

CynoAddress differentAddress = CynosureGenericUtility.getRecordDifferentAddress(permanentAddress,currentAddress);
        if(differentAddress == currentAddress){
            newStudentList.add(student);
        system.debug('@@@303@@@'+newStudentList);
        }
    }
    
    return newStudentList;
}

public List<CynoStudent>getLstOfStudentsWhoseBothParentsAReUnemployeed(){
    List<CynoStudent> newStudentsList = new List <CynoStudent>();
    for(CynoStudent student : this.studentsList){
    CynoParent father = student.father;
    CynoParent mother = student.mother;

CynoParent bothParentsAreUnemployeed =CynosureGenericUtility.getRecordWithBothParentsAreUnemployee(mother,father);
    if (bothParentsAreUnemployeed == mother){
    newStudentsList.add(student);
        system.debug('@@@302@@@'+newStudentsList);
        }
}
return newStudentsList;
}
public List<CynoStudent> getLstOfStudentsWhoseHaveemployeedParents(){
    List<CynoStudent> newStudentsList = new List <CynoStudent>();
    for(CynoStudent student : this.studentsList)
{
    CynoParent father = student.father;
    CynoParent mother = student.mother;

CynoParent bothParentsAreUnemployeed =CynosureGenericUtility.getRecordWithBothParentsAreUnemployee(mother,father);
    if (bothParentsAreUnemployeed == father){
    newStudentsList.add(student);
        system.debug('@@@301@@@'+newStudentsList);
        }
}
return newStudentsList;
}

public List<CynoStudent> getLstOfStudentsAnyParentsAReUnemployeed(){
    List<CynoStudent> newStudentsList = new List <CynoStudent>();
    for(CynoStudent student : this.studentsList)
{
    CynoParent father = student.father;
    CynoParent mother = student.mother;

CynoParent bothParentsAreUnemployeed =CynosureGenericUtility.getRecordWithAnyParentsAreUnemployee(mother,father);
    if (bothParentsAreUnemployeed == mother){
    newStudentsList.add(student);
        system.debug('@@@300@@@'+newStudentsList);
        }
}
return newStudentsList;
}

public void removeStudentWhoHaveNotGivePermanentAddress(CynoStudent student){
    if(student.permanentAddress == NULL){
        this.studentsList.add(student);
        this.studentsList.remove(0);

    }
    else{
        this.studentsList.add(student);
    }
    }

    public void removeStudentWhoHaveNotGiveCurrentAddress(CynoStudent student) {
        if (student.CurrentAddress == NULL) {
            this.studentsList.add(student);
            this.studentsList.remove(0);
        }
        else{
            this.studentsList.add(student);
        }
        
    }
    
    public void removeStudentWhoseBothParentsAreUnployeed(CynoStudent student) {
        CynoParent father = student.father;
        CynoParent mother = student.mother;
        
        CynoParent bothParentsAreUnemployeed = CynosureGenericUtility.getRecordWithBothParentsAreUnemployee(mother,father);
    
        if (bothParentsAreUnemployeed == mother){
            this.studentsList.add(student);
            this.studentsList.remove(0);
        }
        else{
            this.studentsList.add(student);
        }
        
    }
    }



