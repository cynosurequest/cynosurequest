
public with sharing class CynoStudentAdmisionsHandler {
    public Set<CynoStudent> studentsSet {get;set;}
    public CynoStudentAdmisionsHandler() {
        System.debug('@@@@ 1 @@@@ '+this.studentsSet);
        this.studentsSet = new Set<CynoStudent>();
        System.debug('@@@@ 2 @@@@ '+this.studentsSet);
    }

    public List<CynoStudent> getLstOfStudsWhoseMothersSalMoreThanFathersSal() {
        List<CynoStudent> studentsList = new List<CynoStudent>();
        for(CynoStudent student : this.studentsSet) {
            System.debug('@@@@@@@@ 13 @@@@@@@ Student '+student);
            CynoParent mother = student.mother;
            CynoParent father = student.father;
            System.debug('@@@@@@@@ 13 @@@@@@@ mother '+mother);
            System.debug('@@@@@@@@ 13 @@@@@@@ father '+father);

            System.debug('@@@@@@@@ 13 @@@@@@@ mother salary '+mother.yearlyGrossSalary);
            System.debug('@@@@@@@@ 13 @@@@@@@ father salary '+father.yearlyGrossSalary);
            CynoParent highestParentInSal = CynosureGenericUtility.getRecordWithMoreSalary(mother, father);
            System.debug('@@@@@@@@ 13 @@@@@@@ Result '+highestParentInSal);
            if(highestParentInSal ==  mother) {
                System.debug('@@@@@@@ 13 @@@@@@ highest parent '+highestParentInSal);
                studentsList.add(student);
            }
        }
        return studentsList;
    }

    public void addStudent(CynoStudent student) {
        //Validating...todo
        this.studentsSet.add(student);
    }
    public void removeStudent(CynoStudent student) {
        this.studentsSet.remove(student);
    }
    public Integer getStudentCount() {
        return studentsSet.size();
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
}