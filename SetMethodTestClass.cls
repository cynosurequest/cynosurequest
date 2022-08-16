@isTest
public class SetMethodTestClass {
   static testMethod void addMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(40);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Set<Integer> res = SetMethod.SetAddFunction(lstVar);
        system.assertequals(5,res.size(),'Passed');
        Test.stopTest();
    }
 
    static testMethod void clearMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Set<Integer> res = SetMethod.clearMethodSet(lstVar);
        system.assertequals(0,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void cloneMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Set<Integer> res = SetMethod.cloneMethodSet(lstVar);
        system.assertequals(True,lstVar.equals(res),'Passed');
        Test.stopTest();
    }
    static testMethod void containMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Boolean res = SetMethod.containMethoset(lstVar);
        system.assertequals(True,res,'Passed');
        Test.stopTest();
    }
    static testMethod void equalMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Boolean res = SetMethod.equalMethoSet(lstVar);
        system.assertequals(True,res,'Passed');
        Test.stopTest();
    }
    static testMethod void removeMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Set<integer> res = SetMethod.removeMethoSet(lstVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }

    static testMethod void ToStringMethodset() {
        Set<Integer> lstVar = new Set<Integer>();
        lstVar.add(20);
        lstVar.add(30);
        lstVar.add(10);
        lstVar.add(50);
        lstVar.add(60);
        
        Test.startTest();
        Set<string> res = SetMethod.toStringsetMethod(lstVar);
        system.assertequals(1,res.size(),'Passed');
        Test.stopTest();
    }
   }
