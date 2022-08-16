public with sharing class Listmethod {
    //Add Method
    public static List<Integer> ListAddFunction(List<Integer> addList)
    {
        List<Integer> addListTwo = new List<Integer>();
        if(!addList.isEmpty())
        {
            system.debug('ListAddFunction--->addList<------'+addList);
            for(Integer intVar :addList)
            { 
                addListTwo.add(intVar);
            }
            
            
        }
        system.debug('ListAddFunction--->addListTwo<------'+addListTwo);
        return addListTwo;  
    }
    //Index Method
    public static List<Integer> ListAddIndexFunction(List<Integer> addIndex)
    {
        system.debug('ListAddIndexFunction--->addIndex<------'+addIndex);
        if(!addIndex.isEmpty())
        {
            addIndex.add(2,100);
        }
        system.debug('ListAddIndexFunction--->addIndex<------'+addIndex);
        return addIndex;
    }
    public static List<Integer> ListAddallFunction(List<Integer> listOne ,List<Integer> listTwo)
    {
        List<Integer> addAllLst = new List<Integer>();
        if(!listOne.isEmpty())
        {
            addAllLst.addAll(listOne); 
        }
        addAllLst.addAll(listTwo); 
        
        system.debug('ListAddallFunction--->addAllLst<------'+addAllLst);
        return addAllLst;
    }
    public static List<Integer> clearMethodList(List<Integer> clrList)
    {
        system.debug('clearMethodList----------->'+clrList);
        if(!clrList.isEmpty())
        {
            clrList.clear();  
        }
        system.debug('clearMethodList----------->'+clrList);
        return clrList; 
    }
    
    public static List<Integer> cloneMethodList(List<Integer> orgList)
    {
        List<Integer> cloneLst = new List<Integer>();
        system.debug('cloneLst----------->'+cloneLst);
        if(!orgList.isEmpty())
        {
            cloneLst = orgList.clone(); 
        }
        system.debug('cloneLst----------->'+cloneLst);
        return cloneLst;
    }
    
    public static Boolean containMethoList(List<Integer> containLst)
    {
        Boolean result;
        if(!containLst.isEmpty())
        {
            result = containLst.contains(20);
        }
        system.debug('containMethoList----------->'+result);
        return result;
    }
    
    public static boolean equalMethoList(List<Integer> equalst)
    {
        List<Integer> equalstTwo = new List<Integer>();
        Boolean result;
        if(!equalst.isEmpty())
        {
            equalstTwo =  equalst.clone();
            result = equalst.equals(equalstTwo);
        }
        system.debug('equalMethoList----------->'+result);
        return result;
    }
    public static List<integer> removeMethoList(List<Integer> remlst)
    {
        if(!remlst.isEmpty() && remlst.contains(20))
        {
            remlst.remove(0); 
        }
        system.debug('removeMethoList----------->'+remlst);
        return remlst;
    }
    public static List<integer> sortMethoList(List<Integer> sorlst)
    {
        if(!sorlst.isEmpty())
        {
            sorlst.sort(); 
        }
        system.debug('sortMethoList----------->'+sorlst);
        return sorlst;
    }
    public static List<String> toStringMethod(List<Integer> intLst)
    {
        List<String> strLst = new List<String>();
        
        if(!intLst.isEmpty())
        {
            strLst.add(intLst.toString());
        }
        system.debug('toStringMethod----------->'+strLst);
        return strLst;
    }
    public static integer IndexOfMethod(List<Integer> intLst)
    {
        Integer num;
        if(!intLst.isEmpty())
        {
            num = intLst.IndexOf(20);
        }
        system.debug('IndexOfMethod----------->'+num);
        return num;
    }
    public static integer getOfMethod(List<Integer> intLst)
    {
        Integer num;
        if(!intLst.isEmpty())
        {
            num = intLst.get(0);
        }
        system.debug('getOfMethod----------->'+num);
        return num;
    }
}