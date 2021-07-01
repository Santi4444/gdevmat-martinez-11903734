public class Mover
{
   public PVector position= new PVector();
   public PVector speed = new PVector(4,6);
   public float scale = 50;
   public float r = 255, g = 255, b = 255, a = 255;
   
   
   Mover()
   {
      position = new PVector(); 
   }
   
   Mover(float x, float y)
   {
      position = new PVector(x, y);
   }
   
   
   Mover(float x, float y, float scale)
   {
      position = new PVector(x, y);
      this.scale = scale;
   }
   
   Mover(PVector position)
   {
      this.position = position; 
   }
   
   Mover(PVector position, float scale)
   {
      this.position = position; 
      this.scale = scale;
   }
   
   
   public void render()
   {
     
      fill(r,g,b,a);
      circle(position.x, position.y, scale); 
   }
  
   public void holeSet()
   {
     r = 255;
     g = 255;
     b = 255;
     a = 255;
     scale = 50;
   }
    public void holePosition()
   {
     
     position.x = int(random(-540,540));
     position.y = int(random(-360,360));
      
   }
    public void circlesSet()
   {
     
     r = int(random(256));
     g = int(random(256));
     b = int(random(256));
     a = int(random(50,100));
     scale = int(random(10,30));
      
   }
   
}
