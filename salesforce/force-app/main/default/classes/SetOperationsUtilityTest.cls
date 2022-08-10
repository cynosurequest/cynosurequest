@IsTest
private class SetOperationsUtilityTest {
   @IsTest
    static void testUnion() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
        firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        
        Set<Integer> result = SetOperationsUtility.getUnion(firstSet, secondSet);
        system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(9000));
        
        System.debug('@@@@@ Result @@@@ '+result);
    }
    @IsTest
    static void testIntersection() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getIntersection(firstSet, secondSet);
         system.assertEquals(true,result.contains(1));
        system.assertEquals(false,result.contains(10));
        System.debug('@@@@@ Result @@@@ '+result);
        
    }
    @IsTest
    static void testgetValuesInFirstButNotInSecond() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getValuesInFirstButNotInSecond(firstSet, secondSet);
         system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(1));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetValuesInSecondButNotInFirst() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getValuesInSecondButNotInFirst(firstSet, secondSet);
         system.assertEquals(true,result.contains(105));
        system.assertEquals(false,result.contains(1));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetAllOddValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getAllOddValues(firstSet, secondSet);
         system.assertEquals(true,result.contains(1));
        system.assertEquals(false,result.contains(12));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testGetAllEvenValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getAllEvenValues(firstSet, secondSet);
         system.assertEquals(true,result.contains(12));
        system.assertEquals(false,result.contains(147));
        System.debug('@@@@@ Result @@@@ '+result);
    }
     @IsTest
    static void testgetSumOfAllOddValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllOddValues(firstSet, secondSet);
         system.assertEquals(true,result.contains(400));
        system.assertEquals(false,result.contains(350));
        System.debug('@@@@@ Result @@@@ '+result);
        
    }
     @IsTest    
    static void testgetSumOfAllEvenValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllEvenValues(firstSet, secondSet);
         system.assertEquals(true,result.contains(214));
        system.assertEquals(false,result.contains(190));
        System.debug('@@@@@ Result @@@@ '+result);
    }
    @IsTest
    static void testGetSumOfAllMultiplesOfThreeValues() {
        Set<Integer> firstSet = new Set<Integer>();
        Set<Integer> secondSet = new Set<Integer>();
         firstSet.add(1);
        firstSet.add(10);
        firstSet.add(14);
        firstSet.add(12);
        firstSet.add(17);

        secondSet.add(1);
        secondSet.add(105);
        secondSet.add(147);
        secondSet.add(129);
        secondSet.add(178);

        Set<Integer> result = SetOperationsUtility.getSumOfAllMultiplesOfThreeValues(firstSet, secondSet);
         system.assertEquals(true,result.contains(393));
        system.assertEquals(false,result.contains(500));
        System.debug('@@@@@ Result @@@@ '+result);
        
    }
}