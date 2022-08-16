public with sharing class SetMethodsUtility {

        //Set Methods practice 
    //add method
    public static Set<Integer> addMethod(Set<Integer> a){ //in list  method wecant add whole list so we ve to iterate the values one by one
        Set<Integer> mySet = new Set<Integer>();
        for(Integer val : a){
         mySet.add(val);   
        }
        system.debug('add'+mySet);
       return mySet; //after return debug stat cant write bcuz it cant reach
    }
    
    //addAll method
    public static Set<Integer> addAll(Set<Integer> a,Set<Integer> b){
        Set<Integer> mySet = new Set<Integer>();
        Set<Integer> mySetAll = new Set<Integer>();
        for(Integer val:a){
            mySet.add(val);
        }
        for(Integer val : b){
            mySetAll.add(val);
        }
        mySet.addAll(mySetAll);
        return mySet;
    }
    //clear method
    public static Set<Integer> clearMethod(Set<Integer> a){//to clear some elements we need some elements to be added so a,b
    Set<Integer> mySet = new Set<Integer>();
    for(Integer val:a){
        mySet.add(val);
    }
        mySet.clear();
        return mySet;
    }
    //clone method
    public static Set<Integer> cloneMethod(Set<Integer> a){
        Set<Integer> setA = new Set<Integer>();
        for(Integer val: a){
            setA.add(val);
        }
        setA.clone();
        return setA;
    }
    //contains method
    public static Set<Integer> containMethod(Set<Integer> a){
        Set<Integer> mySet = new Set<Integer>();
        for(Integer val : a){
            mySet.add(val);
        }
        mySet.contains(10);
        return mySet;
    }
    //isEmpty
    public static Set<Integer> isEmptyMethod(Set<Integer> a){
        Set<Integer> mySet = new Set<Integer>();
        for(Integer val : a){
            mySet.add(val);
        }
        mySet.isEmpty();
        return mySet;
    }
    //Equals
    public static Set<Integer> equalsMethod(Set<Integer> a, Set<Integer> b){
        Set<Integer> mySet = new Set<Integer>();
        Set<Integer> mySet1 = new Set<Integer>();
        for(Integer val : a){
            mySet.add(val);
        }
        for(Integer val:b){
            mySet.add(val);
        }
        mySet.equals(mySet1);
        return mySet;
    }
    //size | remove,removeAll,retain p
    public static Set<Integer> sizeMethod(Set<Integer> a){
        Set<Integer> mySet = new Set<Integer>();
        for(Integer val : a){
            mySet.add(val);
        }
        mySet.size();
        return mySet;
    }
   
    
    }