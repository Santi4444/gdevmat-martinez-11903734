void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan (PI * 30.0/180.0), 0,0,0,0, -1,0);
  background(0);
}


int i = 0;
void draw()
{
  
  
    if (i < 30)
    {
     randomCircle();
     i++;
    }else
    {
    clear();
    i = 0; 
    }


  }



void randomCircle()
{
  // X and Y code
  float gaussian = randomGaussian();
  float standardDeviation = 100;
  float mean = 0;
  // Circle Scale & Thickness
  float gaussian2 = randomGaussian();
  float standardDeviation2 = 30;
  float mean2 = 20;
  float thick = standardDeviation2 * gaussian2 + mean2;
  //RanGaus
  float x = standardDeviation * gaussian +mean;
  float y = int(random(-720,720));
  //Color
  int r = int(random(256));
  int g = int(random(256));
  int b = int(random(256));
  int a = int(random(50,100));
  
  
  noStroke();
  fill (r,g,b,a);
  circle(x,y,thick);
  
}
