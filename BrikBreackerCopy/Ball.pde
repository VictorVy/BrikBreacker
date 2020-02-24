class Ball
{
  PVector position;
  PVector speed;
  float direction;
  int size;
  
  float playerDist;
  PVector playerDistVect;
  
  public Ball(float x, float y, float speedX, float speedY, int size)
  {
    position = new PVector(x, y);
    speed = new PVector(speedX, speedY);
    this.size = size;
  }
  
  void appear()
  {
    fill(0);
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
  
  void move()
  {
    position.add(speed);
  }
  
  void collisionCheck()
  {
    // walls
    if(position.x <= 0 + size / 2)
    {
      speed.x = abs(speed.x);
    }
    else if(position.x >= width - size / 2)
    {
      speed.x = -abs(speed.x);
    }
    if(position.y <= 0 + size / 2)
    {
      speed.y = abs(speed.y);
    }
    else if(position.y >= height - size / 2)
    {
      speed.y = -abs(speed.y);
    }
    
    // player
    playerDistVect = PVector.sub(player.position, position);
    playerDist = playerDistVect.mag();
    
    if(playerDist <= size / 2 + player.size / 2)
    {
      // reflect angle
      speed.x = (position.x - player.position.x) / 9;
      speed.y = (position.y - player.position.y) / 9;
    }
  }
}
