@isTest
private class MapMethodTestClass {
    
    static testMethod void putMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Map<Integer,String> res = MapMethodClass.MapPutFunction(mapVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    
    static testMethod void putAllMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Map<Integer,String> res = MapMethodClass.MapPutAllFunction(mapVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    
    static testMethod void ClearMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Map<Integer,String> res = MapMethodClass.MapClearFunction(mapVar);
        system.assertequals(0,res.size(),'Passed');
        Test.stopTest();
    }
    
     static testMethod void cloneMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Map<Integer,String> res = MapMethodClass.MapCloneFunction(mapVar);
        system.assertequals(True,mapVar.equals(res),'Passed');
        Test.stopTest();
    }
    
     static testMethod void keySetMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        set<Integer> res = MapMethodClass.MapKeySetFunction(mapVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    
     static testMethod void ValuesMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        List<String> res = MapMethodClass.MapValuesFunction(mapVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void RemoveMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        set<Integer> res = MapMethodClass.MapRemoveFunction(mapVar);
        system.assertequals(0,res.size(),'Passed');
        Test.stopTest();
    }
    static testMethod void ContainsKeyMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Boolean res = MapMethodClass.MapContainsKeyFunction(mapVar);
        system.assertequals(True,res,'Passed');
        Test.stopTest();
    }
    static testMethod void GetMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        List<String> res = MapMethodClass.MapGetFunction(mapVar);
        system.assertequals(4,res.size(),'Passed');
        Test.stopTest();
    }
    
     static testMethod void HashCodeMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        Set<Integer> res = MapMethodClass.MapHashCodeFunction(mapVar);
        system.assertequals(1,res.size(),'Passed');
        Test.stopTest();
    }
    
     static testMethod void ToStringMethod() {
        Map<Integer,String> mapVar = new Map<Integer,String>();
        mapVar.put(1,'Black');
        mapVar.put(2,'Blue');
        mapVar.put(3,'yellow');
        mapVar.put(4,'White');
        
        Test.startTest();
        String res = MapMethodClass.MapToStringFunction(mapVar);
        system.assertequals(4,mapVar.size(),'Passed');
        Test.stopTest();
    }
}
