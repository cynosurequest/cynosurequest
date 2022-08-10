@IsTest
private class CynoStudentAdmissionHandlerTest {
    @IsTest
    static void testDefaultConstructor() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
        System.assertEquals(true, handler.studentsSet != NULL);
        System.assertEquals(0, handler.studentsSet.size());
    }
    /*@IsTest
     static void testAddStudent() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

        CynoStudent saroStudent = new CynoStudent();
        CynoName stud1Name = new CynoName('saro', 'ts', '');
        saroStudent.nameDetails = stud1Name;
        CynoAddress stud1address = new CynoAddress('karungal','marthandam','nagercoil','629178','TN','india');
       saroStudent.permanentAddress = stud1address;
       CynoAddress stud2address = new CynoAddress('karungal','marthandam','nagercoil','629178','TN','india');
       saroStudent.currentAddress = stud2address;
        CynoParent stud1parents = new CynoParent(new CynoName('saro', 'ts', ''),'male','father',700000,'accountant');
        saroStudent.father = stud1parents;
        CynoName father1Name = new CynoName('tharmaraj', 'N', '');
        saroStudent.father.nameDetails = father1Name;
        CynoParent studparents = new CynoParent(new CynoName('saro', 'ts', ''),'female','mother',500000,'vertrinary nurse');
        saroStudent.mother = studparents;
        CynoName motherName = new CynoName('sakunthala', 'A', '');
        saroStudent.mother.nameDetails = motherName;

        CynoStudent arunStudent = new CynoStudent();
        CynoName stud2Name = new CynoName('arun', 'ts', '');
        arunStudent.nameDetails = stud2Name;
        CynoAddress studssaddress = new CynoAddress('karungal','marthandam','nagercoil','629178','TN','india');
        arunStudent.permanentAddress = studssaddress;
       CynoAddress studenaddress = new CynoAddress('karungal','marth','nagercoil','629178','TN','india');
       arunStudent.currentAddress = studenaddress;
        CynoParent stud2parents = new CynoParent(new CynoName('arun', 'ts', ''),'male','father',500000,'');
        arunStudent.father = stud2parents;
        CynoName fatherName2 = new CynoName('tharmaraj', 'N', '');
        arunStudent.father.nameDetails = fatherName2;
        CynoParent stud3parents = new CynoParent(new CynoName('arun', 'ts', ''),'female','mother',800000,'vertrinary nurse');
        arunStudent.mother = stud3parents;
        CynoName motherName2 = new CynoName('sakunthala', 'A', '');
        arunStudent.mother.nameDetails = motherName2;

        CynoStudent aravindStudent = new CynoStudent();
        CynoName stud3Name = new CynoName('aravind', 'ts', '');
        aravindStudent.nameDetails = stud3Name;
        CynoAddress studss3address = new CynoAddress('karungal','marthandam','nagercoil','629178','TN','india');
        aravindStudent.permanentAddress = studss3address;
       CynoAddress studentaddress = new CynoAddress('karungal','marthandam','nagercoil','629178','TN','india');
       aravindStudent.currentAddress = studentaddress;
        CynoParent stud5parents = new CynoParent(('aravind', 'ts', ''),'male','father',900000,'accountant');
        aravindStudent.father = stud5parents;
        CynoName fatherName3 = new CynoName('tharmaraj', 'N', '');
        aravindStudent.father.nameDetails = fatherName3;
        CynoParent stud4parents = new CynoParent(('aravind', 'ts', ''),'female','mother',500000,'');
        aravindStudent.mother = stud4parents;
        CynoName motherName3 = new CynoName('sakunthala', 'A', '');
        aravindStudent.mother.nameDetails = motherName3;

        handler.addStudent(saroStudent);

        handler.addStudent(arunStudent);

        handler.addStudent(aravindStudent);
        
       System.debug('@@@@@ 29 @@@@@@ '+handler.studentsSet);
       System.assertEquals(3, handler.studentsSet.size());
    }*/
   /*@IsTest
    static void testGetTotalSalaryOfMother() {
     
     CynoStudent stud1 = new CynoStudent();
     CynoStudent stud2 = new CynoStudent();
     CynoStudent stud3 = new CynoStudent();

     CynoParent parent1 = new CynoParent('female','mother',25000,'lawyer');
     CynoParent parent2 = new CynoParent('female','mother',65000,'Engineer');
     CynoParent parent3 = new CynoParent('female','mother',85000,'doctor');

     stud1.mother = parent1;
     stud2.mother = parent2;
     stud3.mother = parent3;

     CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
     handler.addStudent(stud1);
     handler.addStudent(stud2);
     handler.addStudent(stud3);
     
     System.debug('@@@@@ 30 @@@@@@ '+JSON.serialize(handler.studentsSet));

     Decimal mothersTotalSalary = handler.getTotalSalaryOfMother();
     System.debug('@@@@@ 30 @@@@@@ '+mothersTotalSalary);
     System.assertEquals(175000,mothersTotalSalary);
    }*/

    testMethod static void testGetListOfStudsWhoseMothersSalMoreThanFathersSal() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

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
        
              List<CynoStudent> result = handler.getListOfStudsWhoseMothersSalMoreThanFathersSal();
        
              System.assertEquals(1, result.size());
    }

    testMethod static void testGetListOfStudsWhoseFatherssSalMoreThanMothersSal() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),
                                              'Male',
                                              'Father',
                                              60000,
                                              'Doctor');

      CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Female',
              'Mother',
              8000,
              'Lawyer');

      CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Female',
              'Mother',
              10000,
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
        
              List<CynoStudent> result = handler.getListOfStudsWhoseFatherssSalMoreThanMothersSal();
        
              System.assertEquals(1, result.size());
    }

    testMethod static void testGetListOfStudentsWhoseMotherIsUnemployed() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Female',
              'Mother',
               0,
              '');

      CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Female',
              'Mother',
              10000,
              'Lawyer');

      
              student1.mother = stud1Mother;
              student2.mother = stud2Mother;
        
              handler.addStudent(student1);
              handler.addStudent(student2);
        
              List<CynoStudent> result = handler.getListOfStudentsWhoseMotherIsUnemployed();
        
              System.assertEquals(1, result.size());
    }
    testMethod static void testGetListOfStudentsWhoseFatherIsUnemployed() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Father = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Male',
              'Father',
               200000,
              'Doctor');

      CynoParent stud2Father = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Male',
              'Father',
              0,
              '');

      
              student1.father = stud1Father;
              student2.father = stud2Father;
        
              handler.addStudent(student1);
              handler.addStudent(student2);
        
              List<CynoStudent> result = handler.getListOfStudentsWhoseFatherIsUnemployed();
        
              System.assertEquals(1, result.size());
    }
    testMethod static void testgetListOfStudentsWhoseParentsAreUnemployed() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),
                                              'Male',
                                              'Father',
                                              0,
                                              '');

      CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Female',
              'Mother',
              0,
              '');

      CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Female',
              'Mother',
              10000,
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
        
              List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreUnemployed();
        
              System.assertEquals(1, result.size());
    }
    testMethod static void testgetListOfStudentsWhoseParentsAreEmployed() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),
                                              'Male',
                                              'Father',
                                              667789990,
                                              'Engineer');

      CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Female',
              'Mother',
              45566770,
              'Doctor');

      CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Female',
              'Mother',
              0,
              '');

      CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),
              'Male',
              'Father',
              0,
              '');
              student1.mother = stud1Mother;
              student2.mother = stud2Mother;
        
              student1.father = stud1Father;
              student2.father = stud2Father;
        
              handler.addStudent(student1);
              handler.addStudent(student2);
        
              List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreEmployed();
        
              System.assertEquals(1, result.size());
    }
    testMethod static void testgetListOfStudentsIfAnyOfParentsAreUnemployed() {
      CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();

      CynoStudent student1 = new CynoStudent();
      CynoStudent student2 = new CynoStudent();

      CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),
                                              'Male',
                                              'Father',
                                              300000,
                                              'Lawyer');

      CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
              'Female',
              'Mother',
              0,
              '');

      CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),
              'Female',
              'Mother',
              0,
              '');

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
        
              List<CynoStudent> result = handler.getListOfStudentsIfAnyOfParentsAreUnemployed();
        
              System.assertEquals(2, result.size());
    }
    testMethod static void testgetAddressOfBothCurrentAndPermenantAddressDifferent() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoAddress stud1CurrentAddress=new CynoAddress('karungal','colachel','nagercoil','629178','TN','India');
        CynoAddress stud1PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud2CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud2PermenantAddress=new CynoAddress('karungal','thuckalay','nagercoil','629178','TN','India');
  
       
  
        student1.currentAddress = stud1CurrentAddress;
        student2.currentAddress = stud2CurrentAddress;
  
        student1.permanentAddress = stud1PermenantAddress;
        student2.permanentAddress = stud2PermenantAddress;
  
        handler.addStudent(student1);
        handler.addStudent(student2);
  
        List<CynoStudent> result = handler.getAddressOfBothCurrentAndPermenantAddressDifferent();
  
        System.assertEquals(2, result.size(),'msg');
  
        
    }
    testMethod static void testgetAddressOfBothCurrentAndPermenantAddressSame() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoAddress stud1CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud1PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud2CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud2PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
  
     
  
        student1.currentAddress = stud1CurrentAddress;
        student2.currentAddress = stud2CurrentAddress;
  
        student1.permanentAddress = stud1PermenantAddress;
        student2.permanentAddress = stud2PermenantAddress;
  
        handler.addStudent(student1);
        handler.addStudent(student2);
  
        List<CynoStudent> result = handler.getAddressOfBothCurrentAndPermenantAddressSame();
  
        System.assertEquals(2, result.size(),'msg');
  
        
    }
    testMethod static void testremoveListOfStudentsWhoHaveNotGivenPermanentaddress() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoAddress stud1CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
       
        CynoAddress stud2CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud2PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
  
     
  
        student1.currentAddress = stud1CurrentAddress;
        student2.currentAddress = stud2CurrentAddress;
       // student1.permanentAddress = stud1PermenantAddress;
        student2.permanentAddress = stud2PermenantAddress;
  
        handler.removeListOfStudentsWhoHaveNotGivenPermanentaddress(student1);
        handler.removeListOfStudentsWhoHaveNotGivenPermanentaddress(student2);
  
  
        System.assertEquals(1, handler.studentsSet.size());
  
        
    }
    testMethod static void testremoveListOfStudentsWhoHaveNotGivenCurrentaddress() {
        CynoStudentAdmissionHandler handler = new CynoStudentAdmissionHandler();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoAddress stud1CurrentAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
        CynoAddress stud1PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
    
        CynoAddress stud2PermenantAddress=new CynoAddress('karungal','marthandam','nagercoil','629178','TN','India');
  
     
  
        student1.currentAddress = stud1CurrentAddress;
        //student2.currentAddress = stud2CurrentAddress;
        student1.permanentAddress = stud1PermenantAddress;
        student2.permanentAddress = stud2PermenantAddress;
  
        handler.removeListOfStudentsWhoHaveNotGivenCurrentaddress(student1);
        handler.removeListOfStudentsWhoHaveNotGivenCurrentaddress(student2);
  
  
        System.assertEquals(1, handler.studentsSet.size());
  
        
    }
   }
        
              
          



      
