
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
        System.debug('@@@@@ Result @@@@ '+result);
    }

    @IsTest
    static void testGetIntersection() {
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

        Set<Integer> result ;
        result = SetOperationsUtility.getIntersection(firstSet, secondSet);
        System.debug('@@@@ 42 @@@@@'+result);
        System.assertEquals(1, result.size());
        System.assertEquals(true, result.contains(1),'1 should exist in the set');
        System.assertEquals(false, result.contains(10), '10 should not exist in the set');
        System.assertEquals(false, result.contains(105));
        System.assertEquals(false, result.contains(1000));

    }
}