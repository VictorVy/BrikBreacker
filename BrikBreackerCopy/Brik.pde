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
    if(hp > 0)
    {
      fill(0);
      noStroke();
      
      ellipse(x, y, size, size);
    }
  }
  
  void collide()
  {
    if(hp > 0)
    {
      if(dist(x, y, ball.x, ball.y) < size / 2)
      {
        hp -= 1;
        
        ball.speedX = (int)(ball.x - x) / (int)map(size, 30, 50, 4, 6);
        ball.speedY = (int)(ball.y - y) / (int)map(size, 30, 50, 4, 6);
      }
    }
  }
}
