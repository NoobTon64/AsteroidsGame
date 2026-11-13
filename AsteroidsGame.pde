//your variable declarations here
Star[] orbs = new Star[100];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(400,400);
  background(0);
  for(int i=0;i<orbs.length;i++)
    orbs[i] = new Star();
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for(int i=0;i<orbs.length;i++)
    orbs[i].show();
}

public void keyPressed(){
 if(key == 'a') //Turn left
   bob.turn(-10);
 if(key == 'd') //Turn right
   bob.turn(10);
 if(key == 'w') // Accelerate
   bob.accelerate(0.2);
 if(key == 's') //Slow DOWN
   bob.accelerate(-0.2);
 if(key == 'f'){ //Hyperspace
   bob.hyperspace();
   for(int i=0;i<orbs.length;i++)
     orbs[i] = new Star();
 }
}
