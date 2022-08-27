
public with sharing class StudentOperationsController {
    @AuraEnabled
    public static void addStudent(StudentWrapper student) {
        Student__c stud = new Student__c() ;
        stud.Name = student.name;
        if(student.marksList != NULL) {
            for(Marks marks : student.marksList) {
                if(marks.subject != NULL &&
                        marks.subject.equalsIgnoreCase('English')) {
                    stud.English__c = marks.mark;
                }
                if(marks.subject != NULL &&
                        marks.subject.equalsIgnoreCase('Maths')) {
                    stud.Maths__c = marks.mark;
                }
            }
        }
        insert stud;
    }

    @AuraEnabled
    public static void addStudents(List<StudentWrapper> studentWrappers) {
        //@@
    }

    public Class Marks {
        public String subject {get;set;}
        public Integer mark {get;set;}
    }

    public Class StudentWrapper {
        @AuraEnabled
        public String name {get;set;}
        @AuraEnabled
        public List<Marks> marksList {get;set;}

        public StudentWrapper(String nameParam, List<Marks> marksListParam) {
            this.name = nameParam;
            if(marksList == NULL) {
                marksList = new List<Marks>();
            }
            else {
                this.marksList = marksListParam;
            }
        }


    }

}