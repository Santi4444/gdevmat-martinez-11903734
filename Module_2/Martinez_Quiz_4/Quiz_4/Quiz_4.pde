void setup()
{
  size(1280,720,P3D);
  camera(0,0, -(height/2.0) / tan (PI * 30.0/180.0), 0,0,0,0, -1,0);
  background(255);
}



Walker pWalker = new Walker();
float t1 = 10;
float t2 = 20;
float t3 = 100;
float t4 = 255;
void draw()
{
 // float n = noise(t);
 // float x = map(n,0,1,0,360);
  //rect(-640 + (t * 100), -360, 1, x);
  //t += 0.01f;
 
  float colorR = map(noise(t1),0,1,0,255);
float colorG = map(noise(t2),0,1,0,255);
float colorB = map(noise(t3),0,1,0,255);
float colorA = map(noise(t4),0,1,0,255);
  t1 += 0.01f;
  t2 += 0.01f;
  t3 += 0.01f;
  t4 += 0.01f;
  fill(colorR,colorG,colorB,colorA);
  noStroke();
  pWalker.render();
  pWalker.pWalk();
  
  
  
}
