class Spaceship extends Floater{
    public Spaceship(){
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     xCorners[3] = -2;
     yCorners[3] = 0;
     //6 more variables to initialize
     myColor = color(255);
     myCenterX = 250;
     myCenterY = 250;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
   }
   public void setmyCenterX(double x){
      myCenterX = x;
   }
   public void setmyCenterY(double y){
      myCenterY = y;
   }
   public double getmyCenterX(){
      return myCenterX;
   }
   public double getmyCenterY(){
      return myCenterY;
   }
   public void setmyXspeed(double x){
      myXspeed = x;
   }
   public void setmyYspeed(double y){
      myYspeed = y;
   }
    public double getmyXspeed(){
      return myXspeed;
   }
   public double getmyYspeed(){
      return myYspeed;
   }
   public void setmyPointDirection(double x){
      myPointDirection = x;
   }
   public double getmyPointDirection(){
      return myPointDirection;
   }
}
