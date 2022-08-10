/**
 * Created by jahangirmohammad on 30/07/2022.
 */

@IsTest
private class CynosureAreaCalculationHandlerTest {
    @IsTest
    static void testAreaOfRectangle() {

        CynosureAreaCalculationHandler handler = new CynosureAreaCalculationHandler();
        System.debug('@@@@1@@@@'+handler.length);   0   0   0
        System.debug('@@@@2@@@@'+handler.breadth);  0   0   0
        System.debug('@@@@3@@@@'+handler.height);   0   0   0

        CynosureAreaCalculationHandler handler1 = new CynosureAreaCalculationHandler(30,40, 50);
        System.debug('@@@@11@@@@'+handler1.length); 30  30  30
        System.debug('@@@@22@@@@'+handler1.breadth); 40 40  40
        System.debug('@@@@33@@@@'+handler1.height); 50 50  50

        CynosureAreaCalculationHandler handler2 = new CynosureAreaCalculationHandler(30,40);
        System.debug('@@@@11@@@@'+handler2.length); 1 1 20
        System.debug('@@@@22@@@@'+handler2.breadth);2 2 40
        System.debug('@@@@33@@@@'+handler2.height);0 0 0


        System.debug('@@@@1100@@@@'+handler.getAreaOfRectangle(50, 60, 70)); 3000 3000 3000
        System.debug('@@@@2200@@@@'+handler.getAreaOfRectangle(50, 60)); 3000 3000  --

        System.debug('@@@@11111@@@@'+handler2.getAreaOfRectangle(50, 60, 70)); 3000 3000 3000
        System.debug('@@@@22222@@@@'+handler2.getAreaOfRectangle(50, 60)); 3000 3000  --

        System.debug('@@@@11@@@@'+handler1.getAreaOfRectangle(50, 60, 70)); 3000 3000 3000
        System.debug('@@@@22@@@@'+handler1.getAreaOfRectangle(50, 60)); 3000 3000  --

        System.debug('@@@@11111@@@@'+handler2.getAreaOfRectangle(50, 60, 70)); 3000 3000 3000
        System.debug('@@@@22222@@@@'+handler2.getAreaOfRectangle(50, 60)); 3000 3000 --

    }
}