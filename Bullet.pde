class Bullet extends Floater{
  Bullet(Spaceship bob){
    myCenterX = bob.getmyCenterX();
    myCenterY = bob.getmyCenterY();
    myXspeed = bob.getmyXspeed();
    myYspeed = bob.getmyYspeed();
    myPointDirection = bob.getmyPointDirection();
    accelerate(6);
  }
  public void show(){
    fill(255);
    ellipse((float)(myCenterX), (float)(myCenterY),10,10);
  }
}
