Walker[] matters = new Walker[10];

void setup()
{
  size(1280,720,P3D);
  camera(0,0, Window.eyeZ, 0,0,0,0, -1,0);

   for (int i = 0; i < matters.length; i++)
    {
      matters[i] = new Walker();
      matters[i].circlesSet(); //color
      matters[i].mass = i + 1;
      matters[i].scale = matters[i].mass * 15;
      matters[i].position = new PVector(random(-540,540), random(-360,360));
     
    }
}


void draw()
{
background(255);

for (int i = 0; i < matters.length; i++)
 {
      
    for (int j = 0; j < matters.length; j++)
    {
      if(i != j)
      {
       
      matters[i].applyForce(matters[j].calculateAttraction(matters[i]));
        
      }
      matters[i].update();
      matters[i].render();
    }
     

 }
}
//Walker bigMatter = new Walker();
//Walker smallMatter = new Walker();
 /*
  bigMatter.position = new PVector();
  bigMatter.mass = 20;
  bigMatter.scale = bigMatter.mass * 10;
  
  smallMatter.position = new PVector(150,150);
  smallMatter.mass = 10;
  smallMatter.scale = smallMatter.mass * 10;
  */
/*
bigMatter.update();
bigMatter.render();

smallMatter.update();
smallMatter.render();

smallMatter.applyForce(bigMatter.calculateAttraction(smallMatter));
bigMatter.applyForce(smallMatter.calculateAttraction(bigMatter));
*/


/*
  for (int j = 0; i < 4; j++)
  {
    if(i != j)
    {
    matters[i].applyForce(matters[j].calculateAttraction(matters[i]));
    }
  
  }
  */
