public class MapHandler {
    
    public static Integer putMethod(){
        
        Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
        
        Integer resSize = res.size();
        System.debug('Put Method Function--'+res);
        return resSize;
    }
   
    
public static void putAllMethod(Map<Integer,String> param1, Map<Integer,String> param2)
    {
    if(!param1.isEmpty() && !param2.isEmpty())   
    {
       param1.putAll(param2);
     system.debug('equalMethod--->'+param1);
    }

    }
    
 
    public static void containsKeyMethod(Map<Integer,String> addpar){
        if(!addpar.KeySet().isEmpty())
        {
            Boolean result =  addpar.containsKey(2);
            system.debug('ContainsKey method-------->'+result);
        }
       
    }
    
    public static void equalMethod(Map<Integer,String> param1, Map<Integer,String> param2)
    {
    if(!param1.isEmpty() && !param2.isEmpty())   
    {
     Boolean result =  param1.equals(param2);
     system.debug('equalMethod--->'+result);
    }

    }
    
    public static void keySetMethod(Map<Integer,String> param1){
        
       if(!param1.KeySet().isEmpty())
       {
           system.debug('KeySetMethod--->'+param1.keySet());
       }
    }
    
    public static void valueMethod(Map<Integer,String> param1){
        
       if(!param1.KeySet().isEmpty())
       {
           system.debug('KeySetMethod--->'+param1.values());
       }
    }
    
    public static void removeMethod(Map<Integer,String> param1){
        
        if (!param1.isEmpty())
        {
            system.debug('before  remove -->'+param1); 
        }
        param1.remove(2);
        system.debug('after remove'+param1);
    }
    
    public static void clearMethod(Map<Integer,String> param1){
        
        if (!param1.isEmpty())
        {
            system.debug('before  clear -->'+param1); 
        }
        param1.clear();
        System.debug('after clear'+param1);
    }
    
    public static void sizeMethod(Map<Integer,String> param1){
        
        if (!param1.isEmpty())
        {
            system.debug('before  clear -->'+param1); 
        }
        param1.size();
        System.debug('after clear'+param1);
    }
    
    public static void cloneMethod(Map<Integer,String> param1){
        Map<Integer,String> paramclone = new Map<Integer,String>();
        if (!param1.isEmpty())
        {
            system.debug('before  clone original variable param1 -->'+param1); 
            system.debug('before  implement clone funciton in paramClone variable -->'+paramclone); 
        }
        paramclone =   param1.clone();
        System.debug('after  implement clone funciton in paramClone variable'+paramclone);
    }
    public static void getMethod(Map<Integer,String> addpar){
        
        if(!addpar.KeySet().isEmpty())
        {
            system.debug(addPar.get(20)); 
        }
    }
    
}
