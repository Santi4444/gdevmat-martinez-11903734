void setup()
{
  size(1080,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);
 
}


Walker walker = new Walker();

void draw()
{

 walker.moveAndBounce();
 
}
