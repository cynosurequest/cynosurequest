@IsTest
public with sharing class ListMethodsUtilityTest {
 
    @IsTest //add
    static void testAddMethod(){ //if we declre a static in method we doont have acreate a instance. we can call that method directly.
        List<Integer> myList1 = new List<Integer>();
        myList1.add(10);
        myList1.add(20);
        List<Integer> res = CalculationHelper.addMethod(myList1);
        system.assertEquals(true, res.contains(10));
        system.debug('added'+ res);
    }
    @IsTest //addIndex
    static void testAddIndex(){ ///here were dealing with index,listelement so to add element weve to add index here
        List<Integer> myList1 = new List<Integer>();
        myList1.add(1,100);
        myList1.add(3,200);
        List<Integer> res = CalculationHelper.addIndex(myList1);
        system.debug('index'+ res);
        system.assertEquals(3, res.size());
        
    }
   @IsTest //addall
    static void testAddAll(){
     List<Integer> myList1 = new List<Integer>(); 
    	myList1.add(1);
        myList1.add(3);
        myList1.add(5);
      List<Integer> myList2 = new List<Integer>();
        myList2.add(2);
        myList2.add(4);
        myList2.add(6);
        List<Integer> res = CalculationHelper.addAll(myList1,myList2);
        system.assertEquals(true, res.contains(1));
        system.debug('index'+ res);
    }
    
  @IsTest //clear
    static void testClearMethod(){
        List<Integer> listA = new List<Integer>();
        listA.add(10);
        listA.add(20);
        listA.add(30);
      List<Integer> res = CalculationHelper.clearMethod(listA);
        system.debug('clear'+ res);
        system.assertEquals(false, res.contains(20));
    }
    @IsTest //clone
    static void testCloneMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.cloneMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
      @IsTest //contains
    static void testContainMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.containMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
     @IsTest //isEmpty
    static void testIsEmptyMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.isEmptyMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(false, res.contains(20));
    }
	 @IsTest //equals
    static void testEqualsMethod(){
        List<Integer> listA = new List<Integer>(); //when we aare comparing only weve 2 params or adding all //set does nt allw dplcts
        listA.add(10);
        listA.add(20);
        listA.add(30);
        List<Integer> listB = new List<Integer>(); 
        listB.add(10);
        listB.add(20);
        listB.add(30);
       List<Integer> res = CalculationHelper.equalsMethod(listA, listB);
        system.debug('contain' + res);
        system.assertEquals(true, res.contains(20));
    }
   @IsTest //size
    static void testSizeMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(10);
        listA.add(20);
        listA.add(30);
       List<Integer> res = CalculationHelper.sizeMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(3, res.size());
    }
     @IsTest    //sort
    static void testSortMethod(){
        List<Integer> listA = new List<Integer>(); 
        listA.add(2,10);
        listA.add(1,20);
        listA.add(0,30);
       List<Integer> res = CalculationHelper.sortMethod(listA);
        system.debug('contain' + res);
        system.assertEquals(3, res.size());
    }
}
