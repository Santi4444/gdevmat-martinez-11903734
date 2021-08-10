public class Walker
{

  public PVector position= new PVector();
  public PVector velocity = new PVector();
    public PVector acceleration = new PVector();
   
    
      public float velocityLimit = 10;
      public float scale = 15;
 
 
  PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x,y);
}
 
 
 public Walker()
 {
 
 }
 

 public void update()
 {
 //Original
 //this.acceleration = PVector.random2D();
 //this.velocity.add(this.acceleration); 
 //this.velocity.limit(velocityLimit);
  //this.position.add(this.velocity);
 
  
  //Version 1
 // PVector mouse2 = mousePos();
 // println(mousePos().x + " and " + mousePos().y);
// this.acceleration = mouse2;
// this.velocity.add(this.acceleration); 
// this.velocity.limit(velocityLimit);
 // this.position.add(this.velocity);
  
  //Version 2
  
  println(mousePos().x + " and " + mousePos().y);
 
  PVector mouse2  = mousePos();
 mouse2.normalize().mult(.2);
 if(this.position.x > mouse2.x)
   {
   this.acceleration.x = -mouse2.x;
   } 
   else if(this.position.x < mouse2.x)
   {
   this.acceleration.x = mouse2.x;
   }
   
  if(this.position.y > mouse2.y)
   {
   this.acceleration.y = -mouse2.y;
   }
   else if(this.position.y < mouse2.y)
   {
   this.acceleration.y = mouse2.y;
   } 

 //this.acceleration = mouse2;
 this.velocity.add(this.acceleration); 
 this.velocity.limit(velocityLimit);
  this.position.add(this.velocity);

 }
 
 public void render()
 {
   circle(position.x, position.y, scale);
   
 }
 public void checkEdges()
 {
 
   if(this.position.x > Window.right)
   {
   this.position.x = Window.left;
   } else if(this.position.x < Window.left)
   {
   this.position.x = Window.right;
   } 
   if(this.position.y > Window.top)
   {
   this.position.y = Window.bottom;
   } else if(this.position.x < Window.bottom)
   {
   this.position.y = Window.top;
   } 
 }
 
 public void checkMouse()
 {
 
   if(this.position.x > mousePos().x)
   {
   this.position.sub(mousePos());
   } else if(this.position.x < mousePos().x)
   {   this.position.x += 1;
   } 
    if(this.position.y > mousePos().y)
   {   this.position.y -= 1;
   } else if(this.position.y < mousePos().y)
   {
   this.position.y += 1;
   } 
 }
 
 
}
 
 
 
 
