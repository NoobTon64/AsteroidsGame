Star[] orbs = new Star[100];
Spaceship bob = new Spaceship();
ArrayList<Asteroid> ball = new ArrayList<Asteroid>();

public void setup() 
{
  size(400,400);
  background(0);
  for(int i=0;i<orbs.length;i++)
    orbs[i] = new Star();
  for(int i=0;i<10;i++)
    ball.add(new Asteroid());
}
public void draw() 
{
  background(0);
  for(int i=0;i<orbs.length;i++)
    orbs[i].show();
  bob.move();
  bob.show();
  for(int i=0;i<ball.size();i++){
    float d = dist((float)bob.getX(), (float)bob.getY(),
                   (float)ball.get(i).getX(), (float)ball.get(i).getY());
    if(d < 20){
      ball.remove(i);
      i--; // an item was removed, so step back to avoid skipping one
    }
    else{
      ball.get(i).move();
      ball.get(i).show();
    }
  }
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
