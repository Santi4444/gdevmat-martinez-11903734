public class Walker
{

  public PVector position= new PVector();
  public PVector speed = new PVector(4,6);
 


  void moveAndBounce()
  {
   
 // circle(x, y, 50);
 background(255);
position.add(speed);

if((position.x > Window.right) || (position.x < Window.left))
{
speed.x *= -1;
}
if((position.y > Window.right) || (position.y < Window.left))
{
speed.y *= -1;
}

fill(182, 52, 100);
circle(position.x, position.y, 50);
  }
  
}
