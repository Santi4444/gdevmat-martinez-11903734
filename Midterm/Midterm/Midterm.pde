Mover blackHole = new Mover();
Mover [] matters = new Mover[100];

void setup()
{
  size(1080,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);

  for (int i = 0; i < 100; i++)
    {
      matters[i] = new Mover();
    }
}

 int j = 0;
void draw()
{
 background(0);
if(j == 0)
  {
   blackHole.holePosition();
   
    for (int i = 0; i < 100; i++)
    {
       float gaussian = randomGaussian();
       float standardDeviation = 95;
       float mean = 100;
       matters[i].circlesSet();
       matters[i].position = new PVector(standardDeviation * gaussian + mean, standardDeviation * gaussian +mean);
    }
  }
   blackHole.holeSet(); 
   blackHole.render();
  println(j + " Number");
    for (int i = 0; i < 100; i++)
    { 
        matters[i].render();  
       PVector dir = PVector.sub(blackHole.position, matters[i].position).normalize();
       matters[i].position.add(dir.mult(10));
    }
    j++;
  
if(j == 300)
{ 
clear();
j=0;
}

}
