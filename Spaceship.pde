class Spaceship extends Floater
{   
  public Spaceship(){
    corners = 15;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{-14, -10, -10,   4,   4,   8,  8, 20,  8,  8,  4,  4, -10, -10, -14};
    yCorners = new int[]{-20, -20,  -3,  -3, -20, -20, -3,  0,  3, 20, 20,  3,   3,  20,  20};
    myColor = color(170,175,185);   
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0; 
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  
  public void hyperspace(){
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = (int)(Math.random()*width);
  myCenterY = (int)(Math.random()*height);
  myPointDirection = (int)(Math.random()*360); //New Random Direction
  }
}

