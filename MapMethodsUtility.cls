public with sharing class MapMethodsUtility {

    //put method
    public static Integer putMethod(){
        Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
        
        Integer resSize = res.size();
        System.debug('Put Method :'+res);
        return resSize;
    }
   
    //putall
public static void putAllMethod(Map<Integer,String> a, Map<Integer,String> b)
    {
    if(!a.isEmpty() && !b.isEmpty())   
    {
       a.putAll(b);
     system.debug('equalMethod--->'+a);
    }

    }
    
 //contains
    public static void containsKeyMethod(Map<Integer,String> param){
        if(!param.KeySet().isEmpty())
        {
            Boolean result =  param.containsKey(2);
            system.debug('ContainsKey method-------->'+result);
        }
       
    }
    //equals
    public static void equalMethod(Map<Integer,String> a, Map<Integer,String> b)
    {
    if(!a.isEmpty() && !b.isEmpty())   
    {
     Boolean result =  a.equals(b);
     system.debug('equalMethod--->'+result);
    }

    }
    //keyset
    public static void keySetMethod(Map<Integer,String> a){
        
       if(!a.KeySet().isEmpty())
       {
           system.debug('KeySetMethod--->'+a.keySet());
       }
    }
    //value
    public static void valueMethod(Map<Integer,String> a){
        
       if(!a.KeySet().isEmpty())
       {
           system.debug('KeySetMethod--->'+a.values());
       }
    }
    //remove
    public static void removeMethod(Map<Integer,String> a){
        
        if (!a.isEmpty())
        {
            system.debug('before  remove -->'+a); 
        }
        a.remove(2);
        system.debug('after remove'+a);
    }
    //clear
    public static void clearMethod(Map<Integer,String> a){
        
        if (!a.isEmpty())
        {
            system.debug('before  clear -->'+a); 
        }
        a.clear();
        System.debug('after clear'+a);
    }
    //size
    public static void sizeMethod(Map<Integer,String> a){
        
        if (!a.isEmpty())
        {
            system.debug('before  clear -->'+a); 
        }
        a.size();
        System.debug('after clear'+a);
    }
    //clone
    public static void cloneMethod(Map<Integer,String> a){
        Map<Integer,String> paramclone = new Map<Integer,String>();
        if (!a.isEmpty())
        {
            system.debug('before  clone original variable a -->'+a); 
            system.debug('before  implement clone funciton in paramClone variable -->'+paramclone); 
        }
        paramclone =   a.clone();
        System.debug('after  implement clone funciton in paramClone variable'+paramclone);
    }
    //get
    public static void getMethod(Map<Integer,String> addpar){
        
        if(!addpar.KeySet().isEmpty())
        {
            system.debug(addPar.get(20)); 
        }
    }
    
}
