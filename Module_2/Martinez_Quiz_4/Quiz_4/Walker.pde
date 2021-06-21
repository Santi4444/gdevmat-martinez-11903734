public class Walker
{

  public float x;
  public float y;
  public float tx= 0, ty = 10000;
  
//float sx = 0, sy= 100, sz =0;
 float t = 150;
  void render()
  {
    //float n = noise(sx,sy,sz);
    //float yx = map(n,0,1,0,360);
    float xt = map(noise(t),0,1,5,150);
  circle(x, y, xt);
  t += 0.01f;
  //sx += 100.01f;
 // sy += 100.01f;
  //sz += 100.01f;
  
  
  }
void pWalk()
  {
x = map(noise(tx),0,1,-640,640);
y= map(noise(ty),0,1,-360,360);
  
tx += 0.01f;
ty += 0.01f;
}

}
