Walker[] walkers = new Walker[8];

//Quiz 9

//Add walkers[i].position.y = Window.bottom; &  walkers[i].position.x = Window.right; to quiz 8

PVector wind = new PVector(0.2,0);
//PVector gravity = new PVector(0,-0.4);

void setup()
{
  size(1280,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);
 // int posX = 0;
  int posY = 0;
 
 for (int i = 0; i < 8; i++)
    {
      //posX = 2 * (Window.windowWidth / 20) * (i - 5);
      posY = 2* (Window.windowHeight / 8) * (i - (8 / 2 ));
      walkers[i] = new Walker();
      walkers[i].circlesSet(); //color
      walkers[i].mass = i + 1;
      walkers[i].scale = walkers[i].mass * 15;
      walkers[i].position = new PVector(-500, posY);
    }
}

 void mousePressed() 
{
  if (mouseButton == LEFT)
  {
     println("Reset");
     setup();
  } 
 }
  
void draw()
{
background(80);
line(0,-500, 0, 500);
for (Walker w : walkers)
{
  // Friction = -1 * mew * N * velocity(v)
  //float mew = 0.01f;
  float normal = 1;
 float frictionMagnitude = w.mew * normal;
  PVector friction = w.velocity.copy(); // copy() copies the current velocity of our walker
  friction.mult(-1);
  friction.normalize();
  friction.mult(frictionMagnitude);
  
  //What happened
  //Created friction
  //1) Get the components in the formula like mew, normal (normalForce), and the velocity(friciton)
  //2) Multiplied everything then normalize and multiply again to  friciton(frinctionMagnitude) 
  //3)Apply friction force
  
  //PVector gravity = new PVector( 0.2 * w.mass, 0); 
      //PVector gravity = new PVector(0, -0.15 * w.mass); // With no air friction 
       
    w.render();
    w.update();
    w.applyForce(wind);
     
     //println(" Hello Number" + w.mew);
    
      if (w.position.x >= 0)
    {
      
      w.mew = 0.4f;
      //println(" Hello Number2" + w.mew);
      w.applyForce(friction);
    }else
    {
    w.applyForce(friction);
    }
     
     
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
    
}

}
