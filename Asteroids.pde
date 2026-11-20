class Asteroid extends Floater
{
  private double rotSpeed; // random + or -

  public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(100);
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myXspeed = Math.random()*3 - 1.5;
    myYspeed = Math.random()*3 - 1.5;
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = Math.random()*6 - 3;
  }

  public void move(){
    turn(rotSpeed);
    super.move();
  }

  public double getX(){ return myCenterX; }
  public double getY(){ return myCenterY; }
}
