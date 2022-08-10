@IsTest
private class CynoStudentAdmisionsHandlerTest {
    @IsTest
    static void testDefaultConstructor() {
        CynoStudentAdmisionsHandler handler = new CynoStudentAdmisionsHandler();
        System.assertEquals(true, handler.studentsSet != NULL);
        System.assertEquals(0, handler.studentsSet.size());
    }
    @IsTest
    static void testAddStudent() {
        CynoStudentAdmisionsHandler handler = new CynoStudentAdmisionsHandler();

        CynoStudent irfanStudent = new CynoStudent();
        CynoName stud1Name = new CynoName('Irfan', 'Sheik', '');
        irfanStudent.nameDetails = stud1Name;

        CynoStudent kaniStudent = new CynoStudent();
        CynoName stud2Name = new CynoName('Kani', 'Chandrashekharan', '');
        kaniStudent.nameDetails = stud2Name;

        CynoStudent ramuStudent = new CynoStudent();
        CynoName stud3Name = new CynoName('Rami', 'Gandham' , 'SpiderMan');
        ramuStudent.nameDetails = stud3Name;

        handler.addStudent(irfanStudent);
        handler.addStudent(kaniStudent);
        handler.addStudent(ramuStudent);

        System.debug('@@@@@ 29 @@@@@@ '+JSON.serialize(handler.studentsSet));
        System.assertEquals(3, handler.studentsSet.size());
    }

    testMethod static void testGetLstOfStudsWhoseMothersSalMoreThanFathersSal() {
        CynoStudentAdmisionsHandler handler = new CynoStudentAdmisionsHandler();

        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();

        CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),
                                                'Male',
                                                'Father',
                                                6000,
                                                'Doctor');

        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
                'Female',
                'Mother',
                8000,
                'Lawyer');

        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
                'Female',
                'Mother',
                6000,
                'Lawyer');

        CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),
                'Male',
                'Father',
                8000,
                'Doctor');




        student1.mother = stud1Mother;
        student2.mother = stud2Mother;

        student1.father = stud1Father;
        student2.father = stud2Father;

        handler.addStudent(student1);
        handler.addStudent(student2);

        List<CynoStudent> result = handler.getLstOfStudsWhoseMothersSalMoreThanFathersSal();

        System.assertEquals(1, result.size());

        CynoStudent student3 = new CynoStudent();

        CynoParent stud3Father = new CynoParent(new CynoName('Tom32', 'Jerry32','shershaw43'),
                'Male',
                'Father',
                60000,
                'Doctor');

        CynoParent stud3Mother = new CynoParent(new CynoName('Micky43', 'Mouse433','Cherrysaw22222'),
                'Female',
                'Mother',
                8000,
                'Lawyer');
        student3.mother = stud3Mother;
        student3.father = stud3Father;

        handler.addStudent(student3);

        List<CynoStudent> result1 = handler.getLstOfStudsWhoseMothersSalMoreThanFathersSal();
        System.assertEquals(1, result1.size());

        CynoStudent student4 = new CynoStudent();

        CynoParent stud4Father = new CynoParent(new CynoName('Tom32', 'Jerry32','shershaw43'),
                'Male',
                'Father',
                60000,
                'Doctor');

        CynoParent stud4Mother = new CynoParent(new CynoName('Micky43', 'Mouse433','Cherrysaw22222'),
                'Female',
                'Mother',
                80000000,
                'Lawyer');
        student4.mother = stud4Mother;
        student4.father = stud4Father;

        handler.addStudent(student4);

        List<CynoStudent> result2 = handler.getLstOfStudsWhoseMothersSalMoreThanFathersSal();
        System.assertEquals(2, result2.size());
    }
}