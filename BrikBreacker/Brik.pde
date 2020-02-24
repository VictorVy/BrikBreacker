class Brik
{
  float x, y;
  float size;
  int hp;
  
  public Brik(float x, float y, float size, int hp)
  {
    this.x = x;
    this.y = y;
    this.size = size;
    this.hp = hp;
  }
  
  void appear()
  {
    if(hp == 2)
    {
      fill(0);
      stroke(0);
      strokeWeight(2);
    }
    else if(hp == 1)
    {
      fill(125);
      stroke(0);
      strokeWeight(2);
    }
    else if(hp == 0)
    {
      noFill();
      stroke(0);
      strokeWeight(2);
    }
    
    ellipse(x, y, size, size);
  }
  
  void collide()
  {
    if(hp > 0)
    {
      if(dist(x, y, ball.x, ball.y) < size / 2 + 6)
      {
        hp -= 1;
        
        ball.speedX = (int)((ball.x - x) / 5.65);
        ball.speedY = (int)((ball.y - y) / 5.5);
      }
    }
  }
}
