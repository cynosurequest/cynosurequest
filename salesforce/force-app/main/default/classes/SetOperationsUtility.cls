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
        Set<Integer> result = new Set<Integer>();
        
       for(Integer val1 : firstSet) {
            if(secondSet.contains(val1)){
               result.add(val1);
            }
       }
        
       
        return result;
    }
     public static Set<Integer> getValuesInFirstButNotInSecond(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : firstSet) {
            if(!secondSet.contains(val)){
            result.add(val);
        }
        }
        return result;
    }

    public static Set<Integer> getValuesInSecondButNotInFirst(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : secondSet) {
            if(!firstSet.contains(val)){
            result.add(val);
        }
        }
        return result;
    }
    public static Set<Integer> getRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
         

        return result;
    }
        
        
    
    public static Set<Integer> getNonRepeatedValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        
        return result;
    }
     public static Set<Integer> getAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : firstSet) {
            if(math.mod(val,2)!=0){
            result.add(val);
        }
           
        }
        for(Integer val : secondSet) {
            if(math.mod(val,2)!=0){
            result.add(val);
        }
            
        }
        return result;
    }
         
            
             
               
               

    
    public static Set<Integer> getAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        for(Integer val : firstSet) {
            if(math.mod(val,2)==0){
            result.add(val);
        }
           
        }
        for(Integer val : secondSet) {
            if(math.mod(val,2)==0){
            result.add(val);
        }
            
        }
        return result;
    }
    public static Set<Integer> getSumOfAllEvenValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        integer sumVal3=0;
        integer sumVal4=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)==0){
               sumVal3 += first;
           }
        }
       
        for(Integer second : secondSet) {
            if(math.mod(second,2)==0){
            sumVal4 += second;
        }
        }
        result.add(sumVal3+sumVal4);
        return result;
    }
    
    public static Set<Integer> getSumOfAllOddValues(Set<Integer> firstSet, Set<Integer> secondSet) {
        Set<Integer> result = new Set<Integer>();
        integer sumVal1=0;
        integer sumVal2=0;
        for(Integer first : firstSet) {
           if(math.mod(first,2)!=0){
               sumVal1 += first;
           }
        }
       
        for(Integer second : secondSet) {
            if(math.mod(second,2)!=0){
            sumVal2 += second;
        }
        }
        result.add(sumVal1+sumVal2);
        return result;
    }
    public static Set<Integer> getSumOfAllMultiplesOfThreeValues(Set<Integer> firstSet, Set<Integer> secondSet) {
          Set<Integer> result = new Set<Integer>();
        integer sumVal5=0;
        integer sumVal6=0;
        for(Integer first : firstSet) {
           if(math.mod(first,3)==0){
               sumVal5 += first;
           }
        }
       
        for(Integer second : secondSet) {
            if(math.mod(second,3)==0){
            sumVal6+= second;
        }
        }
        result.add(sumVal5+sumVal6);
        return result;
    }
    
}