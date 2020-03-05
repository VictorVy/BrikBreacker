class Brik
{
  PVector position;
  float size;
  int hp;
  
  PVector ballDistVect;
  float ballDist;
  
  public Brik(float x, float y, float size, int hp)
  {
    position = new PVector(x, y);
    this.size = size;
    this.hp = hp;
  }
  
  void appear()
  {
    stroke(0);
    strokeWeight(1.5);
    
    if(hp == 2)
    {
      fill(0);
    }
    else if(hp == 1)
    {
      fill(125);
    }
    else if(hp == 0)
    {
      noFill();
    }
    
    ellipse(position.x, position.y, size, size);
  }
  
  void collide()
  {
    if(hp > 0)
    {
      // ball
      ballDistVect = PVector.sub(ball.position, position);
      ballDist = ballDistVect.mag();
      
      if(ballDist <= size / 2 + ball.size / 2)
      {
        hp -= 1;
        
        if(hp == 0)
        {
          kills++;
        }
        
        ball.normalVect = PVector.sub(ball.position, position);
        ball.speedVect = ball.normalVect.normalize().mult(ball.speedScalar);
        
        if(!(kills >= myBriks.size()))
        {
          brikHit.rewind();
          brikHit.play();
        }
      }
    }
  }
}
