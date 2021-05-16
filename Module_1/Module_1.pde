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
drawsQuadraticFunction();
drawsSineWave();
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
   // f(x) = x^2−15x−3  
  color yellow = color (255,255,0);
fill(yellow);
noStroke();
for (float x = -30; x <= 30; x += 0.1f)
{
  circle (x, (float)Math.pow(x,2) - (15 * x) - 3 ,5);
}
}


void drawsLinearFunction()
{
  // f(x) −5x +30
color purple = color (255,0,255);
fill(purple);
stroke(purple);
for (int x = -50; x <= 50; x++)
{
  circle (x, (x * -5) + 30, 5);
}

}

void drawsSineWave()
{
  //A * sin((2 * PI * Frequency) * time + phase/radians/radius?/ something)
  //(amplitude * (float)Math.sin((2 * PI * frequency) * x)
color red = color (255,0,0);
fill(red);
noStroke();
float radius = 50;
float amplitude = 200;
float frequency = 10;

for (int x = 0; x <= 360; x++)
{
  circle ( (float)Math.cos(x) * radius , (float)Math.sin(x) * radius, 2);
}

}
