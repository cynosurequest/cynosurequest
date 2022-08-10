@IsTest
public class CynosureGenericUtilityTest {
    testMethod static void testGetRecordWithMoreSalaryWhenFirstRecordSalaryNull() {
        CynoParent firstRecord = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
                'Female',
                'Mother',
                NULL,
                'Lawyer');

        CynoParent secondRecord = new CynoParent(new CynoName('Crak', 'Jony',''),
                'Female',
                'Mother',
                6000,
                'Lawyer');
        CynoParent result = CynosureGenericUtility.getRecordWithMoreSalary(firstRecord, secondRecord);

        System.assertEquals(secondRecord,  result);

    }
    testMethod static void testGetRecordWithMoreSalaryWhenSecondRecordSalaryNull() {
        CynoParent firstRecord = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
                'Female',
                'Mother',
                9000,
                'Lawyer');

        CynoParent secondRecord = new CynoParent(new CynoName('Crak', 'Jony',''),
                'Female',
                'Mother',
                NULL,
                'Lawyer');
        CynoParent result = CynosureGenericUtility.getRecordWithMoreSalary(firstRecord, secondRecord);

        System.assertEquals(firstRecord,  result);

    }

    testMethod static void testGetRecordWithMoreSalaryWhenSecondRecordSalaryIsMore() {
        CynoParent firstRecord = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
                'Female',
                'Mother',
                9000,
                'Lawyer');

        CynoParent secondRecord = new CynoParent(new CynoName('Crak', 'Jony',''),
                'Female',
                'Mother',
                100000,
                'Lawyer');
        CynoParent result = CynosureGenericUtility.getRecordWithMoreSalary(firstRecord, secondRecord);

        System.assertEquals(secondRecord,  result);

    }


    testMethod static void testGetRecordWithMoreSalaryWhenFirstRecordSalaryIsMore() {
        CynoParent firstRecord = new CynoParent(new CynoName('Micky', 'Mouse','Cherrysaw'),
                'Female',
                'Mother',
                900000000,
                'Lawyer');

        CynoParent secondRecord = new CynoParent(new CynoName('Crak', 'Jony',''),
                'Female',
                'Mother',
                100000,
                'Lawyer');
        CynoParent result = CynosureGenericUtility.getRecordWithMoreSalary(firstRecord, secondRecord);

        System.assertEquals(firstRecord,  result);

    }
}