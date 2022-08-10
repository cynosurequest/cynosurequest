/**
 * Created by jahangirmohammad on 31/07/2022.
 */

@IsTest
private class EmployeeSalaryCalculationHandlerTest {
    @IsTest
    static void testGrossAndNetSalary() {
        EmployeeSalaryCalculationHandler empHandler1 = new EmployeeSalaryCalculationHandler('Sarvanan', 'Murthy', 15000);
        EmployeeSalaryCalculationHandler empHandler2 = new EmployeeSalaryCalculationHandler('Praveen', 'Lakkavaram', 25000, 15);
        EmployeeSalaryCalculationHandler empHandler3 = new EmployeeSalaryCalculationHandler('MuthuSwamy', 'Pandyan', 5000, 20 );
        EmployeeSalaryCalculationHandler empHandler4 = new EmployeeSalaryCalculationHandler('Nadian', 'merical', 54333, 20.0, 30.5 );
        EmployeeSalaryCalculationHandler empHandler5 = new EmployeeSalaryCalculationHandler('Trupti', 'Sharma', 321212, 23.0 , 40.5);

        System.debug('@@@@@@@ Emp1 @@@@@@@'+empHandler1);
        System.debug('@@@@@@@ Emp2 @@@@@@@'+empHandler2);
        System.debug('@@@@@@@ Emp3 @@@@@@@'+empHandler3);
        System.debug('@@@@@@@ Emp4 @@@@@@@'+empHandler4);
        System.debug('@@@@@@@ Emp5 @@@@@@@'+empHandler5);

        system.assertEquals(25000, empHandler1.basicSalary);

    }
}