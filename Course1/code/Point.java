package Course1.code;

public class Point extends Pair {

    public Point(double x, double y){
        super(x,y); //the super method calls the constructor from the super class
    }

    public static Point fromPolar(double r, double theta ) throws Exception{
        if (r<0){
            throw new Exception("r cannot be less than zero");
        }

        double x = r*Math.cos(theta);
        double y = r*Math.sin(theta);

        return new Point(x,y);
    }


    // public String toString(){
    //     return "Point: " + super.toString();
    // }

    //region Mudando estado do objeto
    public void mirrorY(){
        //x = -x não pode pois y é privado
        setX(-getX()); // Usando a interface pública 
    }

    public void mirrorX(){
        //y=-y não pode pois y é privado
        setY(-getY()); //Usando a interface pública ok
    }

    public void rotate(double theta){
        double x0 = getX();
        double y0 = getY();
        setX(x0*Math.cos(theta) - y0*Math.sin(theta));
        setY(x0*Math.cos(theta) + y0*Math.sin(theta));
    }
    //end region
    
}
