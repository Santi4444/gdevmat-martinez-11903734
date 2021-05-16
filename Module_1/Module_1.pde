void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan (PI * 30.0/180.0), 0,0,0,0, -1,0);
}

void draw()
{

  background (0);
  
//  circle (0,0,750);

drawCartesianPlane();
drawsLinearFunction();

}

void drawCartesianPlane()
{
  strokeWeight(2);
color white = color (255,255,255);
fill(white);
stroke(white);
  line (-300, 0, 300, 0); 
    line (0, 300, 0, -300);

for (int i = -300; i <= 300; i += 10)
{
 line(i,-2, i, 2); 
 line(-2,i, 2, i);
}
}
void drawsQuadraticFunction()
{
  
}
void drawsLinearFunction()
{
color white = color (255,255,255);
fill(white);
noStroke();
for (int x = -200; i <= 200; x++)
{
  circle (x,x+2,5);
}

}
