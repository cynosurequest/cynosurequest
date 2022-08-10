
public class CynosureAreaCalculationHandler {
    public Decimal length {get;set;}
    public Decimal Breadth {get;set;}
    public Decimal height {get;set;}

    public CynosureAreaCalculationHandler() {
        this.length = 0;
        this.breadth = 0;
        this.height = 0;
    }

    public CynosureAreaCalculationHandler(Integer l, Integer b) {
        this.length =1;
        this.breadth = 2;
        this.height = 3;
    }

    public CynosureAreaCalculationHandler(Integer l, Integer b, Integer h) {
        this.length = l;
        this.breadth = b;
        this.height = h;
    }
    public Decimal getAreaOfRectangle(Integer l, Integer b, Integer h) {
        return l*b;
    }

    public Decimal getAreaOfRectangle(Integer l, Integer b) {
        return this.length * this.breadth;
    }



}