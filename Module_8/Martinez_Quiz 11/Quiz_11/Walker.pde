public class Walker
{

  public PVector position= new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();   
  
  
  public float velocityLimit = 10;
  public float scale = 15;
  public float mass = 1;
  
  
  
  public float r = 255, g = 255, b = 255, a = 255;
  public float gravitationalConstant = 1;
  
  
   public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
  this.acceleration.add(f); //force accumulation
  }
  
  
  public void update()
{
 this.velocity.add(this.acceleration); //velocity accumulation 
 this.velocity.limit(velocityLimit);
 this.position.add(this.velocity);
 this.acceleration.mult(0);// resets acceleration every frame
}
  public void circlesSet()
   {
   r = int(random(256));
   g = int(random(256));
   b = int(random(256));
   a = int(random(256));
   
   }
  public void render()
 {
  fill(r,g,b,a);
  circle(position.x, position.y, scale);
   
 }
 public void checkEdges()
 {
 
   if(this.position.x > Window.right)
   {
   this.position.x = Window.left;
   } 
   else if(this.position.x < Window.left)
   {
   this.position.x = Window.right;
   } 
   
   if(this.position.y > Window.top)
   {
   this.position.y = Window.bottom;
   } 
   else if(this.position.x < Window.bottom)
   {
   this.position.y = Window.top;
   } 
   
}

public PVector calculateAttraction(Walker walker)
{

PVector force = PVector.sub(this.position, walker.position);
float distance = force.mag(); 
force.normalize();

distance = constrain(distance, 5, 25);

float strength = (this.gravitationalConstant * this.mass * walker.mass) / (distance * distance);
force.mult(strength);
return force;
 

}




}
