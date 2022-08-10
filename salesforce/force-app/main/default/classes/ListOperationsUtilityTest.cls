@IsTest
public class ListOperationsUtilityTest {
   @IsTest
   static void testUnion() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
        firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        
        List<Integer> result = ListOperationsUtility.Union(firstList, secondList);
        system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(9000));
        
        System.debug('@@@@@ Result @@@@ '+result);
    }
    @IsTest
    static void testIntersection() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getIntersection(firstList, secondList);
         system.assertEquals(true,result.contains(1));
        system.assertEquals(false,result.contains(10));
        System.debug('@@@@@ Result @@@@ '+result);
        
    }
    @IsTest
    static void testgetValuesInFirstButNotInSecond() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getValuesInFirstButNotInSecond(firstList, secondList);
         system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(1));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testgetRepeatedValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(10);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getRepeatedValues(firstList, secondList);
         //system.assertEquals(true,result.contains(12));
        //system.assertEquals(false,result.contains(1));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetValuesInSecondButNotInFirst() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getValuesInSecondButNotInFirst(firstList, secondList);
         system.assertEquals(true,result.contains(105));
        system.assertEquals(false,result.contains(1));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetAllOddValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getAllOddValues(firstList, secondList);
         system.assertEquals(true,result.contains(1));
        system.assertEquals(false,result.contains(12));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetAllEvenValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        List<Integer> result = ListOperationsUtility.getAllEvenValues(firstList, secondList);
         system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(147));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest    
    static void testgetSumOfAllEvenValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        Integer Val = ListOperationsUtility.getSumOfAllEvenValues(firstList, secondList);
        System.assertEquals(214,Val);
        System.debug('@@@@@ Result @@@@ '+Val);
    }
     @IsTest    
    static void testgetSumOfAllOddValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        Integer Val = ListOperationsUtility.getSumOfAllOddValues(firstList, secondList);
         system.assertEquals(393,Val);
        
        System.debug('@@@@@ Result @@@@ '+Val);
        
    }
   @IsTest    
    static void testgetSumOfAllMultiplesOfThreeValues() {
        List<Integer> firstList = new List<Integer>();
        List<Integer> secondList = new List<Integer>();
         firstList.add(1);
        firstList.add(10);
        firstList.add(14);
        firstList.add(12);
        firstList.add(17);

        secondList.add(1);
        secondList.add(105);
        secondList.add(147);
        secondList.add(129);
        secondList.add(178);

        Integer Val = ListOperationsUtility.getSumOfAllMultiplesOfThreeValues(firstList, secondList);
        system.assertEquals(Val,400);
        System.debug('@@@@@ Result @@@@ '+Val);
    }
}