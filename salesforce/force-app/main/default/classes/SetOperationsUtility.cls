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

    public static Set<String> addAll(Set<String> a,Set<String> b){
        Set <string> set1 = new Set<String>();
        Set<string> set2= new Set<String>();
        for(String val : a){
            set1.add(val);
        }
        for(String val2 : b){
            set2.add(val2);
            set1.addAll(set2);
        }
        

        return set1;
        
        }

    public static Set <string> clear(Set <string> a){
        Set <string> set1 = new Set<string>();
        for(string val : a){
            set1.add(val);
            system.debug('Adding Values'+set1);
            }
            set1.clear();
            system.debug('clear value'+set1);
        return set1;
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
    public static boolean  getEqualls(Set<Integer> firstSet,Set<Integer> secondSet){
        Set<Integer> val1 = new Set<Integer>();
        Set<Integer> val2 = new Set<Integer>();
        
        for(Integer val : firstSet) {
             val1.add(val);
        }
        for(Integer val : SecondSet) {
            val2.add(val);
       }
       if( val1.equals(val2)){
        return true;
       }
       return false;
    }

       public static Set<integer>  hashcode(Set<Integer> firstSet){
        Set<Integer> val1 = new Set<Integer>();
        for(Integer val : firstSet) {
            val1.add(val);
       }
       val1.hashcode();
       return val1;
       }
       

    
    public static boolean  isEmpty(Set<Integer> firstSet){
        Set<Integer> val1 = new Set<Integer>();
        for(Integer val : firstSet) {
            val1.add(val);
       }
       if(val1.isEmpty()){
       return true;
       }
       return false;
    }

    public static Set<Integer>  isRemove(Set<Integer> firstSet){
        Set<Integer> val1 = new Set<Integer>();
        
        for(Integer val : firstSet) {
            if(math.mod(val,2)==0){
            val1.add(val);
       }else {
        val1.remove(val);
       }
      }
      return val1;
}
public static Set<String> removeAll(Set<String> a,Set<String> b){
    Set <string> set1 = new Set<String>();
    Set<string> set2= new Set<String>();
    for(String val : a){
        set1.add(val);
    }
    for(String val2 : b){
        set2.add(val2);
        set1.addAll(set2);
        System.debug('before remove'+set1);
        
        set1.removeAll(set2);
        
    }
    

    return set1;
    
    }

    public static Set<String> retainAll(Set<String> a,Set<String> b){
        Set <string> set1 = new Set<String>();
        Set<string> set2= new Set<String>();
        for(String val : a){
            set1.add(val);
        }
        for(String val2 : b){
            set2.add(val2);
            }
            set1.retainAll(set2);
        
    
        return set1;
        
        }
        public static Set<integer> size(Set<Integer> firstSet){
            Set<Integer> val1 = new Set<Integer>();
            for(Integer val : firstSet) {
                val1.add(val);
           }
           
           return val1;
           }
           
    public static Set<String> toString123(Set<String> a){
            Set <string> set1 = new Set<String>();
            
            for(String val : a){
                set1.add(val);
            }
            set1.toString();
            return set1;
                
            }
            public static Set<string> clone(Set<string> a){
                Set<string>Set1 = new Set<string>();
                for(string val : a){
                    Set1.add(val);
                    system.debug('Original:'+Set1);
                }
            Set<string> Set2 = new Set<string>(Set1);
            return Set2;    
            }
}

       
       

    
    
