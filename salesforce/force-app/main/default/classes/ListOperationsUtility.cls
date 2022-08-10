public with sharing class ListOperationsUtility {
    public static List<Integer>Union(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : firstList) {
            result.add(val);
        }
        for(Integer val : secondList) {
            result.add(val);
        }
        return result;
    }

     public static List<Integer> getIntersection(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        
       for(Integer val1 : firstList) {
            if(secondList.contains(val1)){
               result.add(val1);
            }
       }
        
       
        return result;
    }
     public static List<Integer> getValuesInFirstButNotInSecond(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : firstList) {
            if(!secondList.contains(val)){
            result.add(val);
        }
        }
        return result;
    }

    public static List<Integer> getValuesInSecondButNotInFirst(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : secondList) {
            if(!firstList.contains(val)){
            result.add(val);
        }
        }
        return result;
    }
    /*public static List<Integer> getRepeatedValues(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : firstList){
            if(secondList.contains(val)){
                result.add(val);
            }
            }  
        
        for(integer val1 : result){
            if(firstList.contains(val1)){
                result.add(val1);
            }
        }

        return result;
    }*/
        
        
    
    public static List<Integer> getNonRepeatedValues(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        
        return result;
    }
     public static List<Integer> getAllOddValues(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : firstList) {
            if(math.mod(val,2)!=0){
            result.add(val);
        }
           
        }
        for(Integer val : secondList) {
            if(math.mod(val,2)!=0){
            result.add(val);
        }
            
        }
        return result;
    }
         
            
             
               
               

    
    public static List<Integer> getAllEvenValues(List<Integer> firstList, List<Integer> secondList) {
        List<Integer> result = new List<Integer>();
        for(Integer val : firstList) {
            if(math.mod(val,2)==0){
            result.add(val);
        }
           
        }
        for(Integer val : secondList) {
            if(math.mod(val,2)==0){
            result.add(val);
        }
            
        }
        return result;
    }
    public static Integer getSumOfAllEvenValues(List<Integer> firstList, List<Integer> secondList) {
        integer Val=0;
        for(Integer first : firstList) {
           if(math.mod(first,2)==0){
            Val = Val + first;
           }
        }
       for(Integer second : secondList) {
            if(math.mod(second,2)==0){
                Val = Val + second;
        }
        }
        return Val;
    }
    
    public static Integer getSumOfAllOddValues(List<Integer> firstList, List<Integer> secondList) {
        integer Val=0;
        for(Integer first : firstList) {
           if(math.mod(first,2)!=0){
            Val = Val + first;
           }
        }
       for(Integer second : secondList) {
            if(math.mod(second,2)!=0){
                Val = Val + second;
        }
        }
        return Val;
    }
   public static Integer getSumOfAllMultiplesOfThreeValues(List<Integer> firstList, List<Integer> secondList) {
        integer Val=0;
        for(Integer first : firstList) {
           if(math.mod(first,3)==0){
            Val = Val + first;
           }
        }
       for(Integer second : secondList) {
            if(math.mod(second,3)==0){
                Val = Val + second;
        }
        }
        return Val;
    }    
}