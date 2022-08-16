@IsTest
public class SetHandlerTest {
@IsTest
     Private static void testAdd() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(10);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.addMethod(firstSet);
    system.assertequals(4,result.size());
     }
    
    
    @IsTest
     Private static void testAddAll() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
        firstSet.add(1);
        firstSet.add(10);
         
        secondSet.add(16);
        secondSet.add(108);
        
        Set<Integer> result = SetHandler.addAllMethod(firstSet, secondSet);
        System.assertEquals(true, result.contains(1));
}
@IsTest
Private static void testAddAllList() {
  Set<Integer> firstset = new Set<Integer>();
  List<Integer> firstList = new List<Integer>();
   firstList.add(1);
   firstList.add(10);
    
   firstset.add(16);
   firstset.add(18);
   
   Set<Integer> result = SetHandler.addAllListMethod(firstset,firstList);
   System.assertEquals(4, result.size());
}

@IsTest
Private static void testContainsAll() {
   Set<Integer> firstSet = new Set<Integer>();
   Set<Integer> secondSet = new Set<Integer>();
   firstSet.add(1);
   firstSet.add(10);
   firstSet.add(100);

   secondSet.add(10);
   secondSet.add(100);
   
   Set<Integer> result = SetHandler.containsAllMethod(firstSet, secondSet);
   System.assertEquals(true, result.contains(1));
}
   
  @IsTest
     Private static void testClear() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(10);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.clearMethod(firstSet);
    system.assertequals(0,result.size());
     }
    
    @IsTest
     Private static void testClone() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(10);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.cloneMethod(firstSet);
    system.assertequals(4,result.size());
     }
  
 @IsTest
     Private static void testSize() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(10);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.sizeMethod(firstSet);
    system.assertequals(4,result.size());
     }
 @IsTest
     Private static void testRemove() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(10);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.removeMethod(firstSet);
    system.assertequals(3,result.size());
     }  
    @IsTest
     Private static void testEquals() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
        firstSet.add(1);
        firstSet.add(10);
         
        secondSet.add(1);
        secondSet.add(10);
        
        Set<Integer> result = SetHandler.equalsMethod(firstSet, secondSet);
        System.assertEquals(false, result.contains(100));
}
    @IsTest
     Private static void testcontains() {
        Set<Integer> firstSet = new Set<Integer>();
          firstSet.add(1);
        firstSet.add(20);
         firstSet.add(199);
        firstSet.add(105);
         Set<Integer> result = SetHandler.containsMethod(firstSet);
    system.assertequals(true,result.contains(20));
     }  
    @IsTest
     Private static void testisEmpty() {
        Set<Integer> firstSet = new Set<Integer>();
        
         Set<Integer> result = SetHandler.isEmptyMethod(firstSet);
    system.assertequals(0,result.size());
     }  
}
