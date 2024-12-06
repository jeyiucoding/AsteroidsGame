class Asteroid extends Floater{
  private double rotSpeed;
  private boolean show;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(255);
    myCenterX = (double)(Math.random()*500);
    myCenterY = (double)(Math.random()*500);
    myXspeed = (double)(Math.random()*2)-1;
    myYspeed = (double)(Math.random()*2)-1;
    myPointDirection = 0;
    rotSpeed = 0;
    show = true;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
   
  }
  public void setrotSpeed(double num){
    rotSpeed = num;
  }
  public double getrotSpeed(){
    return rotSpeed;
  }
   public void setShow(boolean ans){
    show = ans;
  }
  public boolean getShow(){
    return show;
  }
}
