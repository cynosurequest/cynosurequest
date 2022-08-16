public class SetHandler {
    public static Set<Integer> addMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         return firstSet;
     }
     
     
 public static Set<Integer> addAllMethod(Set<Integer>first  ,Set<Integer>second)
     {
         Set<Integer> firstSet = new Set<Integer>();
         Set<Integer> secondSet = new Set<Integer>();
         for(Integer res:first)
         {
             firstSet.add(res);
         }
     
         for(Integer res1:second)
         {
             secondSet.add(res1);
         }
         firstSet.addAll(secondSet);
         return firstSet;
      
     }
      public static Set<Integer> addAllListMethod(Set<Integer>first  ,List<Integer>second)
     {
         Set<Integer> firstSet = new Set<Integer>();
         List<Integer> firstList = new List<Integer>();
         for(Integer res:first)
         {
             firstSet.add(res);
         }
     
         for(Integer res1:second)
         {
             firstList.add(res1);
         }
         firstSet.addAll(firstList);
         return firstSet;
      
     }
     public static Set<Integer> containsAllMethod(Set<Integer>first  ,Set<Integer>second)
     {
         Set<Integer> firstSet = new Set<Integer>();
         Set<Integer> secondSet = new Set<Integer>();
         for(Integer res:first)
         {
             firstSet.add(res);
         }
     
         for(Integer res1:second)
         {
             secondSet.add(res1);
         }
         firstSet.containsAll(secondSet);
         return firstSet;
      
     }

     public static Set<Integer> clearMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.clear();
         return firstSet;
     }
     public static Set<Integer> cloneMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.clone();
         return firstSet;
     }
     
     public static Set<Integer> sizeMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.size();
         return firstSet;
     }
     public static Set<Integer> removeMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.remove(10);
         return firstSet;
     }
     public static Set<Integer> equalsMethod(Set<Integer>first  ,Set<Integer>second)
     {
         Set<Integer> firstSet = new Set<Integer>();
         Set<Integer> secondSet = new Set<Integer>();
         for(Integer res:first)
         {
             firstSet.add(res);
         }
     
         for(Integer res1:second)
         {
             secondSet.add(res1);
         }
         firstSet.equals(secondSet);
         return firstSet;
      
     }
     public static Set<Integer> containsMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.contains(20);
         return firstSet;
     }
     public static Set<Integer> isEmptyMethod(Set<Integer>first)
     {
         Set<Integer> firstSet = new Set<Integer>();
        
         for(Integer res:first)
         {
             firstSet.add(res);
         } 
         firstSet.isEmpty();
         return firstSet;
     }
 }