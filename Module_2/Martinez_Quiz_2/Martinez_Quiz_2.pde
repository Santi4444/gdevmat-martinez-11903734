void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan (PI * 30.0/180.0), 0,0,0,0, -1,0);
}

Walker myWalker = new Walker();
Walker myWalker1 = new Walker();

void draw()
{

myWalker.randomWalk();
myWalker.render();

myWalker1.randomWalkBiased();
myWalker1.render();

}
