
public with sharing class SetOperationsUtility {
    public static Set<Integer> getUnion(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : firstSet) {
            result.add(val);
        }
        for(Integer val : secondSet) {
            result.add(val);
        }
        return result;
    }

    public static Set<Integer> getIntersection(Set<Integer> firstSet, Set<Integer> secondSet) {
        /*
        1. Read first set
        2. read second set
        3. create an empty set
        4. For each element in first set say e1
                if exists in Second set
                then add e1 to result


        */
        Set<Integer> result = new Set<Integer>(); {}
        for(Integer val1 : firstSet) {
            if (secondSet.contains(val1)) {
                result.add(val1);
            }
        }
        return result;
    }

    public static Set<Integer> getValuesInFirstButNotInSecond(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }

    public static Set<Integer> getValuesInSecondButNotInFirst(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }

    /*
    public static Set<Integer> getRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }
    public static Set<Integer> getNonRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    } */
    public static Set<Integer> getAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }
    public static Set<Integer> getAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }

    public static Set<Integer> getSumOfAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }
    public static Set<Integer> getSumOfAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }

    public static Set<Integer> getSumOfAllMultiplesOfThreeValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        return result;
    }



    ///.....Next level interchange values from firstSet and secondSet
}