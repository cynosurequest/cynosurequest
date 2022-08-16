@IsTest
public with sharing class MapMethodsUtilityTest {

    //put
    @IsTest
        private static void testPutMethod(){
            
             Integer checkSize = MapMethodsUtility.putMethod();
            system.assertEquals(4, checkSize);
        }
    //putall
     @IsTest
        private static void testPutAllMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            Map<Integer,String> res1 = new Map<Integer,String>();
            res1.put(3,'three');
            res1.put(4,'four');
            
            MapMethodsUtility.putAllMethod(result, res1);
            system.assertEquals(4, result.size());
    
        }
        //contains
        @IsTest
        private static void testContainsKeyMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
          
          
            MapMethodsUtility.containsKeyMethod(result);
            System.assertEquals(4, result.size());

            
        }
        //equals
        @IsTest
        private static void testEqualMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            Map<Integer,String> res1 = new Map<Integer,String>();
            res1.put(1,'three');
            res1.put(2,'four');
            
            MapMethodsUtility.equalMethod(result, res1);
            system.assertEquals(2, result.size());
        }
        //keyset
        @IsTest
        private static void testKeySetMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
           result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.keySetMethod(result);
            System.assertEquals(4, result.size());
        }
        //values
    @IsTest
        private static void testValueMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
           result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.valueMethod(result);
            System.assertEquals(4, result.size());
        }
        //remove
        @IsTest
        private static void testRemoveMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
           result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.removeMethod(result);
            System.assertEquals(3, result.size());
        }
        //clear
        @IsTest
        private static void testClearMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.clearMethod(result);
            System.assertEquals(0, result.size());
        }
        //size
    @IsTest
        private static void testSizeMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.sizeMethod(result);
            System.assertEquals(4, result.size());
        }
        //clone
        @IsTest
        private static void testCloneMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.cloneMethod(result);
            System.assertEquals(4, result.size());
        }
        //get
    @IsTest
        private static void testGetMethod(){
            Map<Integer,String> result = new Map<Integer,String>();
            result.put(1,'one');
            result.put(2,'two');
            result.put(3,'three');
            result.put(4,'four');
            MapMethodsUtility.getMethod(result);
            System.assertEquals(4, result.size());
        }
}

