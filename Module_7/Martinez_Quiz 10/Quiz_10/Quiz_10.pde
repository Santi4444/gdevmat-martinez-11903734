Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker myWalker = new Walker();
Walker[] walkers = new Walker[10];

void setup()
{
   size(1280,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);
   int posX = 0;
   
/*   
  myWalker.position = new PVector(0,300);
  myWalker.g = 0;
  myWalker.b = 0;
  myWalker.mass = 5;
  myWalker.scale = myWalker.mass * 10;
*/
 for (int i = 0; i < 10; i++)
    {
      posX = 2 * (Window.windowWidth / 10) * (i - 5);
      
      walkers[i] = new Walker();
      walkers[i].circlesSet(); //color
      walkers[i].mass = i;
      walkers[i].scale = walkers[i].mass * 15;
      walkers[i].position = new PVector(posX, 300);
    }

}



void draw()
{
background(255);

ocean.render();
//myWalker.render();
//myWalker.update();

//PVector gravity = new PVector( 0, -0.25 * myWalker.mass); 
//myWalker.applyForce(gravity); // apply gravity

float c = 0.01f;
 float normal = 1;
 float frictionMagnitude = c * normal;
 PVector friction = myWalker.velocity.copy(); 
 // F = -uNv
 for (Walker w : walkers)
{
  PVector gravity = new PVector( 0, -0.15f * w.mass); 
  PVector wind = new PVector(.1,0);
  w.render();
  w.update();
  w.applyForce(gravity);
  w.applyForce(wind);
  
  if (w.position.y <= Window.bottom)
    {
      w.position.y = Window.bottom;
      w.velocity.y *= -1; 
    }
    if (w.position.x >= Window.right)
    {
      w.position.x = Window.right;
      w.velocity.x *= -1; 
    }
  if(ocean.isCollidingWith(w))
{
  println("Colliding!");
  PVector dragForce = ocean.calculateDragForce(w);
  w.applyForce(dragForce);
  
}
  
}
 
 /*
 myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude)); //apply friction to Walker

 if (myWalker.position.y <= Window.bottom)
    {
      myWalker.position.y = Window.bottom;
      myWalker.velocity.y *= -1; 
    
  }

if(ocean.isCollidingWith(myWalker))
{
  println("Colliding!");
  PVector dragForce = ocean.calculateDragForce(myWalker);
  myWalker.applyForce(dragForce);
  
}
*/


}
