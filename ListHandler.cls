public class ListHandler {
    public static List<Integer> addMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         return firstList;
     }
     public static List<Integer> addIndexMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.add(2,69);
         return firstList;
     }
     
 public static List<Integer> addAllMethod(List<Integer>first  ,List<Integer>second)
     {
         List<Integer> firstList = new List<Integer>();
         List<Integer> secondList = new List<Integer>();
         for(Integer res:first)
         {
             firstList.add(res);
         }
     
         for(Integer res1:second)
         {
             secondList.add(res1);
         }
         firstList.addAll(secondList);
         return firstList;
      
     }
     public static List<Integer> addAllSetMethod(List<Integer>first  ,Set<Integer>second)
     {
         List<Integer> firstList = new List<Integer>();
         Set<Integer> firstset = new Set<Integer>();
         for(Integer res:first)
         {
             firstList.add(res);
         }
     
         for(Integer res1:second)
         {
             firstset.add(res1);
         }
         firstList.addAll(firstset);
         return firstList;
      
     }
     public static List<Integer> clearMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.clear();
         return firstList;
     }
     public static List<Integer> cloneMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.clone();
         return firstList;
     }
     public static List<Integer> getMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.get(1);
         return firstList;
     }
     public static List<Integer> sizeMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.size();
         return firstList;
     }
     public static List<Integer> removeMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.remove(2);
         return firstList;
     }
     public static List<Integer> equalsMethod(List<Integer>first  ,List<Integer>second)
     {
         List<Integer> firstList = new List<Integer>();
         List<Integer> secondList = new List<Integer>();
         for(Integer res:first)
         {
             firstList.add(res);
         }
     
         for(Integer res1:second)
         {
             secondList.add(res1);
         }
         firstList.equals(secondList);
         return firstList;
      
     }
     public static List<Integer> containsMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.contains(20);
         return firstList;
     }
     public static List<Integer> isEmptyMethod(List<Integer>first)
     {
         List<Integer> firstList = new List<Integer>();
        
         for(Integer res:first)
         {
             firstList.add(res);
         } 
         firstList.isEmpty();
         return firstList;
     }
 }
