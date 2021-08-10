Walker myWalker = new Walker();
Walker[] walkers = new Walker[100];

void setup()
{
  size(1080,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);

//myWalker.acceleration = new PVector(-0.01, 0.1);
for (int i = 0; i < 100; i++)
    {
      walkers[i] = new Walker();
      walkers[i].position.x = int(random(-540,540));
     walkers[i].position.y = int(random(-360,360));
      walkers[i].scale = int(random(20,30));
    }
 //myWalker.scale = 50;
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}

void draw()
{
background(80);
 //PVector mouse = mousePos();

//PVector mouse = mousePos();
for (int i = 0; i < 100; i++)
    {
      
      println(i + " Number");
      
     //walkers[i].acceleration = new PVector(mouse.x, mouse.y);
       walkers[i].update();
       // walkers[i].checkMouse();
       walkers[i].render();
       
      
      walkers[i].checkEdges();
      //walkers[i].mouse2.normalize().mult(.2);
       
    }

//line(0,0, mouse.x, mouse.y);
//mouse.normalize().mult(.2);
//myWalker.acceleration = new PVector(mouse.x, mouse.y);

//myWalker.update();
//myWalker.render();
//myWalker.checkEdges();

}
