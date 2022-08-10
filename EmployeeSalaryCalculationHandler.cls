
public with sharing class EmployeeSalaryCalculationHandler {
    public String firstName {get;set;}
    public String lastName {get;set;}
    public Double basicSalary {get;set;}
    public Double hraPercentage {get;set;}
    public Double pfPercentage {get;set;}
    public Double incomeTaxPercentage {get;set;}
    public Double professionalTaxPercentage {get;set;}
    public Double grossSalary {get;set;}
    public Double hraAmount {get;set;}
    public Double netSalary {get;set;}
    public Double additionalIncome {get;set;}
    public Double totalDeductions {get;set;}


    public EmployeeSalaryCalculationHandler(String firstName, String lastName, Double bSalary) {
        this.basicSalary = this.basicSalary == NULL ?  this.basicSalary : 0 ;
        this.firstName = firstName;
        this.lastName = this.lastName;
        calculateTotalDeductions();
        calculateGrossSalary();
        calculateNetSalary();
    }
                   ('Praveen', 'Lakkavaram', 25000, 15)

    //Kani,Sarvanan,Gokul, Irfan      - Basicsalary:25000,HRA%:15,firstname:Praveen,lastname:Lakkavaram,HRA:3750;TD:0,GS:28750,NS:0
    public EmployeeSalaryCalculationHandler(String firstName, String lastName, Double bSalary, Double hraPercentage) {
        this.basicSalary = bSalary; 0
        this.hraPercentage = this.hraPercentage == NULL ? 0 : this.hraPercentage;
        this.firstName = this.firstName;
        this.lastName = lastName;
        calculateHRA();
        calculateTotalDeductions();
        calculateGrossSalary();
        calculateNetSalary();
    }

    public EmployeeSalaryCalculationHandler(String firstName, String lastName, Decimal bSalary, Decimal hraPercentage, Decimal incomeTaxPercentage) {
        this.basicSalary = bSalary;
        this.hraPercentage = this.hraPercentage == NULL ? 0 : this.hraPercentage;
        this.firstName = this.firstName;
        this.lastName = lastName;
        calculateHRA();
        calculateTotalDeductions();
        calculateGrossSalary();
        calculateNetSalary();
    }


    private void calculateHRA() {
        hraAmount = this.basicSalary * hraPercentage / 100;
    }
    private void calculateTotalDeductions() {
        this.totalDeductions = 0;
    }

    private void calculateGrossSalary() {
        this.grossSalary = this.basicSalary + this.hraAmount;
    }

    private void calculateNetSalary() {
        this.grossSalary = this.netSalary + this.additionalIncome - this.totalDeductions;
    }

}