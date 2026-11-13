class Star //note that this class does NOT extend Floater
{
  private int myX,myY,myColor,mySize,myOpacity;
  
  public Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    mySize = 8;
    myOpacity = 150;
  }
  public void show(){
   noStroke();
   fill(myColor,myOpacity);
   ellipse(myX,myY,mySize,mySize);
  }
}
