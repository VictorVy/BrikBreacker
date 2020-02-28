class Ball
{
  PVector position;
  PVector speedVect;
  float speedScalar;
  float direction;
  int size;
  
  float playerDist;
  PVector playerDistVect;
  PVector normalVect;
  //float angleDiff;
  //PVector bounceVect;
  //float normalAngle;
  //float bounceAngle;
  
  public Ball(float x, float y, float run, float rise, float speedScalar, int size)
  {
    position = new PVector(x, y);
    this.speedScalar = speedScalar;
    speedVect = new PVector(run, rise).mult(speedScalar);
    this.size = size;
  }
  
  void appear()
  {
    fill(red);
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
  
  void move()
  {
    position.add(speedVect);
  }
  
  void collisionCheck()
  {
    // walls
    if(position.x <= 0 + size / 2)
    {
      speedVect.x = abs(speedVect.x);
    }
    else if(position.x >= width - size / 2)
    {
      speedVect.x = -abs(speedVect.x);
    }
    if(position.y <= 0 + size / 2)
    {
      speedVect.y = abs(speedVect.y);
    }
    else if(position.y >= height - size / 2)
    {
      player.hp--;
      if(player.hp <= 0)
      {
        mode = lose;
      }
      
      speedVect.y = -abs(speedVect.y);
    }
  }
}
