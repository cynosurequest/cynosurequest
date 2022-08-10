    @IsTest
private class CynoStudentAdmisionHandlerListTest {

    
    testMethod static void testAddStudent() {

        CynoStudent madhuStudent = new CynoStudent();
        CynoName stud1Name = new CynoName('madhu', 'M', '');
        madhuStudent.nameDetails = stud1Name;

        CynoAddress std1perAddress=new CynoAddress('HousingUnit','Nehrunagar','HYD','641014','TS','India');
        madhuStudent.permanentAddress=std1perAddress;

        CynoAddress std1curAddress=new CynoAddress('HousingUnit','Nehrunagar','Hyd','641014','TS','India');
        madhuStudent.CurrentAddress=std1curAddress;

        CynoParent std1father=new CynoParent(new CynoName('riaz','abdul','khader'),'male','father',5,'poltician');
        madhuStudent.father=std1father;

        CynoParent std1Mother=new CynoParent(new CynoName('riaz','abdul','khader'),'Female','Mother',10,'Housewife');
        madhuStudent.mother=std1Mother;


        CynoStudent sivaStudent = new CynoStudent();
        CynoName stud2Name = new CynoName ('Kani', 'Chandrashekharan', '');
       sivaStudent.nameDetails = stud2Name;
        CynoAddress std2perAddress=new CynoAddress('chilzIT','Saravanapatti','Hyd','641064','TS','India');
       sivaStudent.permanentAddress=std2perAddress;
        CynoAddress std2curAddress=new CynoAddress('chilzIT','Saravanapatti','Hyd','641064','Ts','India');
       sivaStudent.CurrentAddress=std2curAddress;
        CynoParent std2father=new CynoParent(new CynoName('riaz','abdul','khader'),'male','father',1000000,'police');
       sivaStudent.father=std2father;
        CynoParent std2Mother=new CynoParent(new CynoName('riaz','abdul','khader'),'Female','Mother',0,'Housewife');
       sivaStudent.mother=std2Mother;

        CynoStudent ramuStudent = new CynoStudent();
        CynoName stud3Name = new CynoName('Rami', 'Gandham' , 'SpiderMan');
        ramuStudent.nameDetails = stud3Name;
         CynoAddress std3perAddress=new CynoAddress('kathir','college','Hyderabad','641064','Tamilnadu','India');
        ramuStudent.permanentAddress=std3perAddress;
        CynoAddress std3curAddress=new CynoAddress('kathir','college','Hyd','641064','Tamilnadu','India');
       ramuStudent.CurrentAddress=std3curAddress;
        CynoParent std3father=new CynoParent(new CynoName('riaz','abdul','khader'),'male','father',1000000,'cricket player');
       ramuStudent.father=std3father;
        CynoParent std3Mother=new CynoParent(new CynoName('riaz','abdul','khader'),'Female','Mother',100000,'athlete');
       ramuStudent.mother=std3Mother;

       CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
        handler.addStudent(madhuStudent);
        handler.addStudent(sivaStudent);
        handler.addStudent(ramuStudent);
       

        System.debug('@@@@@ 29 @@@@@@ '+JSON.serialize(handler.studentsList));
        System.assertEquals(3, handler.studentsList.size());
    }

    
    testMethod static void testGetTotalSalaryOfMothers(){

        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
        CynoStudent student3 = new CynoStudent();

        CynoParent stud1mother = new CynoParent(new CynoName('riaz','abdul','khader'),'female','mother',60000,'doctor');
        CynoParent stud2mother = new CynoParent(new CynoName('riaz','abdul','khader'),'female','mother',60000,'doctor');
        CynoParent stud3mother = new CynoParent(new CynoName('riaz','abdul','khader'),'female','mother',60000,'doctor');

        student1.mother = stud1mother;
        student2.mother = stud2mother;
        student3.mother = stud3mother;

        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();

        handler.addStudent(student1);
        handler.addStudent(student2);
        handler.addStudent(student3);

        system.debug('TotalSalaryOfMothers' + JSON.serialize( handler.studentsList)); // here we wil get the records in a set which are in current handler
        Integer totalMothersSalary = handler.getTotalSalaryofMothers(); //here intger is used bcuz thvalues in numbers, assigning var, and applying loop with the method name
        system.assertEquals(180000,totalMothersSalary); // chcking thevalues expected and actual
    }
    

testMethod static void testGetStudentsMothersSalaryIsMoreThanFathersSalary(){
    CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();

        CynoParent stud1Mother = new CynoParent(new CynoName('martha','micheal','wayne'),'female','mother',60000,'tecaher');
        CynoParent stud2Mother = new CynoParent(new CynoName('zoya','md','khan'),'female','mother',60000,'tecaher');

        CynoParent stud1Father= new CynoParent(new CynoName('john','micheal','wayne'),'male','father',40000,'doctor');
        CynoParent stud2Father= new CynoParent(new CynoName('imran','md','khan'),'male','father',40000,'doctor');


        student1.mother = stud1Mother;
        student2.mother = stud2Mother;

        student1.father = stud1Father;
        student2.father = stud2Father;


        handler.addStudent(student1);
        handler.addStudent(student2);
        
        List<CynoStudent> result = handler.getStudentsMothersSalaryIsMoreThanFathersSalary();
        system.assertEquals(2,result.size());

        //stdnt 3

        CynoStudent student3 = new CynoStudent();

        CynoParent stud3Mother = new CynoParent(new CynoName('sara','micheal','wayne'),'female','mother',60000,'tecaher');
        CynoParent stud3Father= new CynoParent(new CynoName('clak','micheal','wayne'),'male','father',40000,'doctor');
        
        student3.mother = stud3Mother;
        student3.father = stud3Father;

        handler.addStudent(student3);

        List<CynoStudent> result1 = handler.getStudentsMothersSalaryIsMoreThanFathersSalary();
        system.assertEquals(1,result.size());

        //stud4
        CynoStudent student4 = new CynoStudent();

        CynoParent stud4Mother = new CynoParent(new CynoName('sara','micheal','wayne'),'female','mother',60000,'tecaher');
        CynoParent stud4Father= new CynoParent(new CynoName('clak','micheal','wayne'),'male','father',40000,'doctor');
        
        student4.mother = stud4Mother;
        student4.father = stud4Father;

        handler.addStudent(student4);

        List<CynoStudent> result2 = handler.getStudentsMothersSalaryIsMoreThanFathersSalary();
        system.assertEquals(1,result.size());

}
    
    //father more salary
    testMethod static void testGetListOfStudsWhoseFatherssSalMoreThanMothersSal() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),'Male','Father',60000,'Doctor');
        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Female','Mother',8000,'Lawyer');
  
        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),'Female','Mother',10000,'Lawyer');
        CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),'Male','Father',8000,'Doctor');

                student1.mother = stud1Mother;
                student2.mother = stud2Mother;
          
                student1.father = stud1Father;
                student2.father = stud2Father;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudsWhoseFatherssSalMoreThanMothersSal();
            
                System.assertEquals(1, result.size());
      }
  //mother is unemployed
      testMethod static void testGetListOfStudentsWhoseMotherIsUnemployed() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Female','Mother',0,'');
        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),'Female','Mother',10000,'Lawyer');
  
        
                student1.mother = stud1Mother;
                student2.mother = stud2Mother;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudentsWhoseMotherIsUnemployed();
          
                System.assertEquals(1, result.size());
      }
  //father is unemployed
      testMethod static void testGetListOfStudentsWhoseFatherIsUnemployed() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Father = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Male','Father',200000,'Doctor');
        CynoParent stud2Father = new CynoParent(new CynoName('Crak', 'Jony',''),'Male','Father',0,'');
        
                student1.father = stud1Father;
                student2.father = stud2Father;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudentsWhoseFatherIsUnemployed();
          
                System.assertEquals(1, result.size());
      }
  //parents are unemployed
      testMethod static void testgetListOfStudentsWhoseParentsAreUnemployed() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),'Male','Father',0,'');
        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Female','Mother',0,'');
  
        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),'Female','Mother',10000,'Lawyer');
        CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),'Male','Father',8000,'Doctor');

                student1.mother = stud1Mother;
                student2.mother = stud2Mother;
          
                student1.father = stud1Father;
                student2.father = stud2Father;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreUnemployed();
          
                System.assertEquals(1, result.size());
      }
  //parents are employed
      testMethod static void testgetListOfStudentsWhoseParentsAreEmployed() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),'Male','Father',667789990,'Engineer');
        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Female','Mother',45566770,'Doctor');
  
        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''),'Female','Mother',0,'');
        CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),'Male','Father',0,'');

                student1.mother = stud1Mother;
                student2.mother = stud2Mother;
          
                student1.father = stud1Father;
                student2.father = stud2Father;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudentsWhoseParentsAreEmployed();
          
                System.assertEquals(1, result.size());
      }
  //if any parents are employed
      testMethod static void testgetListOfStudentsIfAnyOfParentsAreUnemployed() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
  
        CynoStudent student1 = new CynoStudent();
        CynoStudent student2 = new CynoStudent();
  
        CynoParent stud1Father = new CynoParent(new CynoName('Tom', 'Jerry','shershaw'),'Male','Father',300000,'Lawyer');
        CynoParent stud1Mother = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),'Female','Mother',0,'');
  
        CynoParent stud2Mother = new CynoParent(new CynoName('Crak', 'Jony',''), 'Female','Mother',0,'');
        CynoParent stud2Father = new CynoParent(new CynoName('Bin', 'cherry','George'),'Male','Father',8000,'Doctor');
                
                student1.mother = stud1Mother;
                student2.mother = stud2Mother;
          
                student1.father = stud1Father;
                student2.father = stud2Father;
          
                handler.addStudent(student1);
                handler.addStudent(student2);
          
                List<CynoStudent> result = handler.getListOfStudentsIfAnyOfParentsAreUnemployed();
          
                System.assertEquals(2, result.size());
      }
  //address are different
      testMethod static void testgetAddressOfBothCurrentAndPermenantAddressDifferent() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
    
          CynoStudent student1 = new CynoStudent();
          CynoStudent student2 = new CynoStudent();

          CynoAddress stud1CurrentAddress=new CynoAddress('Ammerpet','police station ','HYD','500018','TS','India');
          CynoAddress stud1PermenantAddress=new CynoAddress('Ammerpet ','near maitrivanam','HYD','500018','TS','India');
          CynoAddress stud2CurrentAddress=new CynoAddress('panjagutta','near Central mall','HYD','500018','TS','India');
          CynoAddress stud2PermenantAddress=new CynoAddress('ESI','erragadda','HYD','500018','TS','India');

          student1.currentAddress = stud1CurrentAddress;
          student2.currentAddress = stud2CurrentAddress;
    
          student1.permanentAddress = stud1PermenantAddress;
          student2.permanentAddress = stud2PermenantAddress;
    
          handler.addStudent(student1);
          handler.addStudent(student2);
    
          List<CynoStudent> result = handler.getAddressOfBothCurrentAndPermenantAddressDifferent();
    
          System.assertEquals(2, result.size(),'msg');
    
          
      }
  //address are same
      testMethod static void testgetAddressOfBothCurrentAndPermenantAddressSame() {
        CynoStudentAdmisionHandlerList handler = new CynoStudentAdmisionHandlerList();
    
          CynoStudent student1 = new CynoStudent();
          CynoStudent student2 = new CynoStudent();
    
          CynoAddress stud1CurrentAddress=new CynoAddress('Ammerpet','police station ','HYD','500018','TS','India');
          CynoAddress stud1PermenantAddress=new CynoAddress('Ammerpet ','near maitrivanam','HYD','500018','TS','India');
          CynoAddress stud2CurrentAddress=new CynoAddress('panjagutta','near Central mall','HYD','500018','TS','India');
          CynoAddress stud2PermenantAddress=new CynoAddress('ESI','erragadda','HYD','500018','TS','India');
    
       
    
          student1.currentAddress = stud1CurrentAddress;
          student2.currentAddress = stud2CurrentAddress;
    
          student1.permanentAddress = stud1PermenantAddress;
          student2.permanentAddress = stud2PermenantAddress;
    
          handler.addStudent(student1);
          handler.addStudent(student2);
    
          List<CynoStudent> result = handler.getAddressOfBothCurrentAndPermenantAddressSame();
    
          System.assertEquals(2, result.size(),'msg');
    
          
      }
     }
  