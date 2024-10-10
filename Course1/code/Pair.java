package Course1.code;

public class Pair{
    private double x;
    private double y;

    public Pair(double x, double y){
        this.x = x;
        this.y = y;
    }



    protected double abs(){
        return Math.sqrt(Math.pow(x,2) + Math.pow(y, 2) );
    }

    @Override
    public String toString(){
        return "("+x+", " + y + ")";
    }

    // region getters
    public double getX(){
        return x;
    }

    public double getY(){
        return y;
    }
    //end region

    //region setters
    public void setX(double x){
        this.x = x;
    }
    public void setY(double y){
        this.y = y;
    }
    //end region

    //region Mudando estado do objeto
    public void scale(double factor){
        x *= factor;
        y *= factor;
    }

    public void translate(double x, double y){
        this.x += x;
        this.y += y;
    }

    public void translate(Pair p){
        this.x += p.x;
        this.y +=p.y;
    }
    //end region

}