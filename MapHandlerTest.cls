@IsTest
public class MapHandlerTest {
    
    @IsTest
        private static void testPutMethod(){
            
             Integer checkSize = MapHandler.putMethod();
            system.assertEquals(4, checkSize);
        }
    
     @IsTest
        private static void testPutAllMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            Map<Integer,String> res1 = new Map<Integer,String>();
            res1.put(3,'three');
            res1.put(4,'four');
            
            MapHandler.putAllMethod(res, res1);
            system.assertEquals(4, res.size());
    
        }

        @IsTest
        private static void testContainsKeyMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            MapHandler.containsKeyMethod(res);
            System.assertEquals(4, res.size());

            
        }
        @IsTest
        private static void testEqualMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            Map<Integer,String> res1 = new Map<Integer,String>();
            res1.put(1,'three');
            res1.put(2,'four');
            
            MapHandler.equalMethod(res, res1);
            system.assertEquals(2, res.size());
          
            
            
        }
   
        @IsTest
        private static void testKeySetMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
           res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            
            MapHandler.keySetMethod(res);
            System.assertEquals(4, res.size());
            
            
        }
    @IsTest
        private static void testValueMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
           res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            
            MapHandler.valueMethod(res);
            System.assertEquals(4, res.size());
            
            
        }
        @IsTest
        private static void testRemoveMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
           res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
           
            MapHandler.removeMethod(res);
            System.assertEquals(3, res.size());

           
            
        }
       
        @IsTest
        private static void testClearMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            
            MapHandler.clearMethod(res);
            System.assertEquals(0, res.size());

          
            
        }
    @IsTest
        private static void testSizeMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            
            MapHandler.sizeMethod(res);
            System.assertEquals(4, res.size());

          
            
        }
        @IsTest
        private static void testCloneMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
          
            
            MapHandler.cloneMethod(res);
            System.assertEquals(4, res.size());

        }
    @IsTest
        private static void testGetMethod(){
            Map<Integer,String> res = new Map<Integer,String>();
            res.put(1,'one');
            res.put(2,'two');
            res.put(3,'three');
            res.put(4,'four');
          
           
            MapHandler.getMethod(res);
            System.assertEquals(4, res.size());
            
            
        }
}
