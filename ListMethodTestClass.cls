@isTest
private class ListMethodTestClass {
   
    static testMethod void addMethod() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(40);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<Integer> res = Listmethod.ListAddFunction(lstVar);
        system.assertequals(5,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void indexMethod() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<Integer> res = Listmethod.ListAddIndexFunction(lstVar);
        system.assertequals(100,res[2],'Passed');
        Test.stopTest();
    }
    static testMethod void addAllMethod() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        List<Integer> lstVarTwo = new List<Integer>();
        lstVar.add(70);
        lstVar.add(80);
        lstVar.add(90);
        lstVar.add(100);
        lstVar.add(110);
        
        Test.startTest();
        List<Integer> res = Listmethod.ListAddallFunction(lstVar,lstVarTwo);
        system.assertequals(10,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void clearMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<Integer> res = Listmethod.clearMethodList(lstVar);
        system.assertequals(0,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void cloneMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<Integer> res = Listmethod.cloneMethodList(lstVar);
        system.assertequals(True,lstVar.equals(res),'Passed');
        Test.stopTest();
    }
    static testMethod void containMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Boolean res = Listmethod.containMethoList(lstVar);
        system.assertequals(True,res,'Passed');
        Test.stopTest();
    }
    static testMethod void equalMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Boolean res = Listmethod.equalMethoList(lstVar);
        system.assertequals(True,res,'Passed');
        Test.stopTest();
    }
    static testMethod void removeMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<integer> res = Listmethod.removeMethoList(lstVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void sortMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<integer> res = Listmethod.sortMethoList(lstVar);
        system.assertequals(5,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void ToStringMethodList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        List<string> res = Listmethod.toStringMethod(lstVar);
        system.assertequals(1,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void indexOffList() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Integer res = Listmethod.IndexOfMethod(lstVar);
        system.assertequals(0,res,'Passed');
        Test.stopTest();
    }
    static testMethod void getOffMethod() {
        List<Integer> lstVar = new List<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Integer res = Listmethod.getOfMethod(lstVar);
        system.assertequals(20,res,'Passed');
        Test.stopTest();
    }
}