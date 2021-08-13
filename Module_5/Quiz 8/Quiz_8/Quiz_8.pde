Walker walker = new Walker();
Walker[] walkers = new Walker[10];
//Walker heavyWalker = new Walker();


PVector wind = new PVector(.15,0);
PVector gravity = new PVector(0,-0.4);

void setup()
{
  size(1280,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);
  
 // heavyWalker.position.y = -50; //makes it lower
 // heavyWalker.mass = 2;
 walker.mass = 2;
 walker.scale = walker.mass * 15;
 for (int i = 0; i < 10; i++)
    {
      walkers[i] = new Walker();
      walkers[i].circlesSet(); //color
      walkers[i].mass = i + 1;
      walkers[i].scale = walkers[i].mass * 15;
      walkers[i].position.x = -500;
      walkers[i].position.y = 200;
    }
}


void draw()
{
background(80);
for (int i = 0; i < 10; i++)
{
     walkers[i].render();
     walkers[i].update();
     walkers[i].applyForce(wind);
     walkers[i].applyForce(gravity);
     if (walkers[i].position.y <= Window.bottom)
    {
    walkers[i].velocity.y *= -1; // 3rd Law :)}
     walkers[i].position.y = Window.bottom;
    }
    if (walkers[i].position.x >= Window.right)
    {
    walkers[i].velocity.x *= -1; 
    walkers[i].position.x = Window.right;
    }
    if (walkers[i].position.x <= Window.left)
    {
    walkers[i].velocity.x *= -1; 
    }
}
 

//NOTES    
//walker.render();
//walker.update();
//walker.applyForce(wind);
//walker.applyForce(gravity);

//if (walker.position.y <= Window.bottom)
//{
//  walker.velocity.y *= -1; // 3rd Law :)
//}

//heavyWalker.render();
//heavyWalker.update();
//heavyWalker.applyForce(wind);
}
