void setup()
{
  size(1080,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);
 
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}


void draw()
{
background(130);
println(mousePos().x + " " + mousePos().y);

PVector mouse = mousePos();

strokeWeight(15);
strokeCap(ROUND);
stroke(255, 0, 0);
mouse.normalize().mult(350);
line(0,0, mouse.x, mouse.y);
line(0,0, -mouse.x, -mouse.y);

strokeWeight(10);
stroke(255, 255,255);
line(0,0, mouse.x, mouse.y);
line(0,0, -mouse.x, -mouse.y);

strokeWeight(15);
mouse.normalize().mult(100);
stroke(0,0,0);
line(0,0, mouse.x, mouse.y);
line(0,0, -mouse.x, -mouse.y);

 
}
