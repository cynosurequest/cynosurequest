@IsTest
public with sharing class SetMethodsUtilityTest {
   
        @IsTest
        static void testAddMethod(){ //if we declre a static in method we doont have acreate a instance. we can call that method directly.
            Set<Integer> mySet1 = new Set<Integer>();
            mySet1.add(10);
            mySet1.add(20);
            Set<Integer> res = CalculationHelper.addMethod(mySet1);
            system.assertEquals(true, res.contains(10));
            system.debug('added'+ res);
        }
        @IsTest
        static void testAddIndex(){ ///here were dealing with index,listelement so to add element weve to add index here
            Set<Integer> mySet1 = new Set<Integer>();
            mySet1.add(1,100);
            mySet1.add(3,200);
            Set<Integer> res = CalculationHelper.addIndex(mySet1);
            system.debug('index'+ res);
            system.assertEquals(3, res.size());
            
        }
       @IsTest
        static void testAddAll(){
         Set<Integer> mySet1 = new Set<Integer>(); 
            mySet1.add(1);
            mySet1.add(3);
            mySet1.add(5);
          Set<Integer> mySet2 = new Set<Integer>();
            mySet2.add(2);
            mySet2.add(4);
            mySet2.add(6);
            Set<Integer> res = CalculationHelper.addAll(mySet1,mySet2);
            system.assertEquals(true, res.contains(1));
            system.debug('index'+ res);
        }
        
      @IsTest
        static void testClearMethod(){
            Set<Integer> setA = new Set<Integer>();
            setA.add(10);
            setA.add(20);
            setA.add(30);
          Set<Integer> res = CalculationHelper.clearMethod(setA);
            system.debug('clear'+ res);
            system.assertEquals(false, res.contains(20));
        }
        @IsTest
        static void testCloneMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = CalculationHelper.cloneMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
          @IsTest
        static void testContainMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = CalculationHelper.containMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
         @IsTest
        static void testIsEmptyMethod(){
            Set<Integer> setA = new Set<Integer>(); 
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = CalculationHelper.isEmptyMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(false, res.contains(20));
        }
         @IsTest
        static void testIsEqualsMethod(){
            Set<Integer> setA = new Set<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
            setA.add(10);
            setA.add(20);
            setA.add(30);
            Set<Integer> setB = new Set<Integer>(); 
            setB.add(10);
            setB.add(20);
            setB.add(30);
           Set<Integer> res = CalculationHelper.equalsMethod(setA, setB);
            system.debug('contain' + res);
            system.assertEquals(true, res.contains(20));
        }
       @IsTest
        static void testSizeMethod(){
            Set<Integer> setA = new Set<Integer>(); 
            setA.add(10);
            setA.add(20);
            setA.add(30);
           Set<Integer> res = CalculationHelper.sizeMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(3, res.size());
        }
         @IsTest
        static void testSortMethod(){
            Set<Integer> setA = new Set<Integer>(); 
            setA.add(2,10);
            setA.add(1,20);
            setA.add(0,30);
           Set<Integer> res = CalculationHelper.sortMethod(setA);
            system.debug('contain' + res);
            system.assertEquals(3, res.size());
        }
    }
    

