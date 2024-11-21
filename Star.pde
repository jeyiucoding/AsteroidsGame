class Star{
  protected int myX,myY;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show(){
    noStroke();
    fill(color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)));
    ellipse(myX,myY,3,3);
  }
}
