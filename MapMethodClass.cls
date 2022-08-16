public class MapMethodClass 
{
    public static Map<Integer,String> MapPutFunction(Map<Integer,String> putMap)
    {
        Map<Integer,String> putMapTwo = new Map<Integer,String>();
        if(!putMap.isEmpty())
        {
            system.debug('MapPutFunction--->putMapTwo<------'+putMap);
            putMapTwo = putMap;
        }
        system.debug('MapPutFunction--->putMapTwo<------'+putMapTwo);
        return putMapTwo;  
    }
    
    public static Map<Integer,String> MapPutAllFunction(Map<Integer,String> putMap)
    {
        Map<Integer,String> putMapTwo = new Map<Integer,String>();
        if(!putMap.isEmpty())
        {
            system.debug('MapPutAllFunction--->putMapTwo<------'+putMap);
            putMapTwo.putAll(putMap);
        }
        system.debug('MapPutAllFunction--->putMapTwo<------'+putMapTwo);
        return putMapTwo;  
    }
    
    public static Map<Integer,String> MapClearFunction(Map<Integer,String> putMap)
    {
        if(!putMap.isEmpty())
        {
            system.debug('MapClearFunction--->putMap<------'+putMap);
            putMap.clear();
        }
        system.debug('MapPutAllFunction--->putMapTwo<------'+putMap);
        return putMap;  
    }
    
    public static Map<Integer,String> MapCloneFunction(Map<Integer,String> putMap)
    {
        Map<Integer,String> putMapTwo = new Map<Integer,String>();
        if(!putMap.isEmpty())
        {
            system.debug('MapCloneFunction--->putMap<------'+putMapTwo);
            putMapTwo =  putMap.clone();
        }
        system.debug('MapCloneFunction--->putMapTwo<------'+putMapTwo);
        return putMapTwo;  
    }
    
    public static Set<Integer> MapKeySetFunction(Map<Integer,String> putMap)
    {
        set<Integer> ids = new set<Integer>();
        system.debug('MapKeySetFunction--->putMap<------'+ids);
        if(!putMap.KeySet().isEmpty())
        { 
            for(Integer i: putMap.KeySet())
            {
                ids.add(i);
            }
            
        }
        system.debug('MapKeySetFunction--->putMap<------'+ids);
        return ids;  
    }
    
    public static List<String> MapValuesFunction(Map<Integer,String> putMap)
    {
        List<String> ids = new List<String>();
        system.debug('MapValuesFunction--->putMap<------'+ids);
        if(!putMap.Values().isEmpty())
        { 
            for(String i: putMap.Values())
            {
                ids.add(i);
            }
            
        }
        system.debug('MapValuesFunction--->putMap<------'+ids);
        return ids;  
    }
    
    public static Set<Integer>  MapRemoveFunction(Map<Integer,String> putMap)
    {
        Set<Integer> ids = new Set<Integer>();
        system.debug('MapRemoveFunction--->putMap<------'+ids);
        if(!putMap.KeySet().isEmpty())
        { 
            for(Integer i: putMap.KeySet())
            {
                putMap.remove(i);
            }
        }
        system.debug('MapRemoveFunction--->putMap<------'+ids);
        return ids;  
    }
    public static Boolean MapContainsKeyFunction(Map<Integer,String> putMap)
    {
        Boolean Res;
        system.debug('MapContainsKeyFunction--->putMap<------'+Res);
        if(!putMap.KeySet().isEmpty())
        { 
            Res = putMap.containsKey(1) ? True : False;
        }
        system.debug('MapRemoveFunction--->putMap<------'+Res);
        return Res;  
    }
    public static List<String> MapGetFunction(Map<Integer,String> putMap)
    {
        List<String> str = new List<String>();
        if(!putMap.isEmpty())
        {
            system.debug('MapGetFunction--->putMap<------'+putMap);
            for(Integer i=0;i<putMap.size();i++)
            {
                str.add(putMap.get(i)); 
            }
        }
        system.debug('MapGetFunction--->putMap<------'+putMap);
        return str;  
    }
    public static Set<Integer> MapHashCodeFunction(Map<Integer,String> putMap)
    {
        Set<Integer> hasCode = new Set<Integer>();
        if(!putMap.isEmpty())
        {
            system.debug('MapHashCodeFunction--->putMap<------'+putMap);
            for(Integer i=0;i<putMap.size();i++)
            {
                hasCode.add(putMap.hashCode()); 
            }
        }
        system.debug('MapHashCodeFunction--->putMap<------'+putMap);
        return hasCode;  
    }
    public static String MapToStringFunction(Map<Integer,String> putMap)
    {
        String stLst;
        if(!putMap.isEmpty())
        {
            system.debug('MapToStringFunction--->putMap<------'+stLst);
            stLst = putMap.toString();

        }
        system.debug('MapToStringFunction--->putMapTwo<------'+stLst);
        return stLst;  
    }
}
