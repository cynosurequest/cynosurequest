@IsTest
public class ListHandlerTest {
@IsTest
     Private static void testAdd() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.addMethod(firstList);
    system.assertequals(4,result.size());
     }
    
    @IsTest
     Private static void testAddIndex() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.addMethod(firstList);
         System.debug('@@@@@'+result);
    system.assertequals(4,result.size());
     }
    
    @IsTest
     Private static void testAddAll() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(1);
        firstList.add(10);
         
        secondList.add(16);
        secondList.add(108);
        
        List<Integer> result = ListHandler.addAllMethod(firstList, secondList);
        System.assertEquals(true, result.contains(1));
}
    @IsTest
     Private static void testAddAllSet() {
        List<Integer> firstList = new List<Integer>();
        Set<Integer> firstset = new Set<Integer>();
        firstList.add(1);
        firstList.add(10);
         
        firstset.add(16);
        firstset.add(16);
        
        List<Integer> result = ListHandler.addAllSetMethod(firstList, firstset);
        System.assertEquals(3, result.size());
}
  @IsTest
     Private static void testClear() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.clearMethod(firstList);
    system.assertequals(0,result.size());
     }
    
    @IsTest
     Private static void testClone() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.cloneMethod(firstList);
    system.assertequals(4,result.size());
     }
   @IsTest
     Private static void testGet() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.getMethod(firstList);
    system.assertequals(true,result.contains(10));
     }
 @IsTest
     Private static void testSize() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.sizeMethod(firstList);
    system.assertequals(4,result.size());
     }
 @IsTest
     Private static void testRemove() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(10);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.removeMethod(firstList);
    system.assertequals(3,result.size());
     }  
    @IsTest
     Private static void testEquals() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(1);
        firstList.add(10);
         
        secondList.add(1);
        secondList.add(10);
        
        List<Integer> result = ListHandler.equalsMethod(firstList, secondList);
        System.assertEquals(false, result.contains(100));
}
    @IsTest
     Private static void testcontains() {
        List<Integer> firstList = new List<Integer>();
          firstList.add(1);
        firstList.add(20);
         firstList.add(199);
        firstList.add(105);
         List<Integer> result = ListHandler.containsMethod(firstList);
    system.assertequals(true,result.contains(20));
     }  
    @IsTest
     Private static void testisEmpty() {
        List<Integer> firstList = new List<Integer>();
        
         List<Integer> result = ListHandler.isEmptyMethod(firstList);
    system.assertequals(0,result.size());
     }  
}