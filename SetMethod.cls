public with sharing class SetMethod {
    //Add Method
    public static Set<Integer> SetAddFunction(Set<Integer> setList)
    {
        Set<Integer> addSetTwo = new Set<Integer>();
        if(!setList.isEmpty())
        {
            system.debug('setAddFunction--->addSet<------'+setList);
            for(Integer intVar :setList)
            { 
                addsetTwo.add(intVar);
            }
            
            
        }
        system.debug('setAddFunction--->addSetTwo<------'+addsetTwo);
        return addsetTwo;  
    }
   
   /* public static List<Integer> setAddallFunction(Set<Integer> setOne ,Set<Integer> setTwo)
    {
        Set<Integer> addAllset = new Set<Integer>();
        if(!setOne.isEmpty())
        {
            addAllset.addAll(setOne); 
        }
        addAllset.addAll(setTwo); 
        
        system.debug('setAddallFunction--->addAllset<------'+addAllset);
        return addAllset;
    }*/
    public static Set<Integer> clearMethodSet(Set<Integer> clrset)
    {
        system.debug('clearMethodset----------->'+clrset);
        if(!clrset.isEmpty())
        {
            clrset.clear();  
        }
        system.debug('clearMethodset----------->'+clrset);
        return clrset; 
    }
    
    public static Set<Integer> cloneMethodSet(Set<Integer> orgSet)
    {
        Set<Integer> cloneset = new Set<Integer>();
        system.debug('cloneset----------->'+cloneset);
        if(!orgset.isEmpty())
        {
            cloneset = orgset.clone(); 
        }
        system.debug('cloneset----------->'+cloneset);
        return cloneset;
    }
    
    public static Boolean containMethoset(Set<Integer> containset)
    {
        Boolean result;
        if(!containset.isEmpty())
        {
            result = containset.contains(20);
        }
        system.debug('containMethoset----------->'+result);
        return result;
    }
    
    public static boolean equalMethoSet(Set<Integer> equalset)
    {
        Set<Integer> equasetTwo = new Set<Integer>();
        Boolean result;
        if(!equalset.isEmpty())
        {
            equasetTwo =  equalset.clone();
            result = equalset.equals(equasetTwo);
        }
        system.debug('equalMethoSet----------->'+result);
        return result;
    }
    public static Set<Integer> removeMethoSet(Set<Integer> remset)
    {
        if(!remset.isEmpty() && remset.contains(20))
        {
            remset.remove(20); 
        }
        system.debug('removeMethoSet----------->'+remset);
        return remset;
    }
  
    public static Set<String> toStringsetMethod(Set<Integer> intset)
    {
        Set<String> strset = new Set<String>();
        
        if(!intset.isEmpty())
        {
            strset.add(intset.toString());
        }
        system.debug('toStringMethod----------->'+strset);
        return strset;
    }
   
}
