Star[] space = new Star[200];
Spaceship bob;
ArrayList<Asteroid> a;
boolean wIsPressed = false;
boolean aIsPressed = false;
boolean dIsPressed = false;
boolean eIsPressed = false;

public void setup(){
  size(500,500);
  bob = new Spaceship();
  for(int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  a = new ArrayList<Asteroid>();  
  for (int i = 0; i < 15; i++) {
    a.add(new Asteroid());  
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < space.length; i++){
    space[i].show();
  }
  bob.move();
  bob.show();
  if(wIsPressed == true){
    bob.accelerate(.2);
  }

  if(dIsPressed == true){
    bob.turn(7);
  }
 
  if(aIsPressed == true){
    bob.turn(-7);
  }
  fill(255);
  textSize(20);
  text("myCenterX: " + (float)(bob.getmyCenterX()), 20,30);
  text("myCenterY: " + (float)(bob.getmyCenterY()), 20,50);
  text("myXspeed: " + (float)(bob.getmyXspeed()), 20,70);
  text("myYspeed: " + (float)(bob.getmyYspeed()), 20,90);
  text("myPointDirection: " + (float)(bob.getmyPointDirection()), 20,110);
  for(int i = 0; i < a.size(); i++){
    
   if(a.get(i).getShow() == true){
      a.get(i).show();
      a.get(i).move();
     
   }
    int randomNum = (int)(Math.random()*2);
    double add = (double)(Math.random()*3)-1.5;
    double subtract = -1*(double)(Math.random()*3)-1.5;
    if(randomNum == 0){
      a.get(i).setrotSpeed(add);
    }
    if(randomNum == 1){
      a.get(i).setrotSpeed(subtract);
    }
    if(dist((float)(a.get(i).myCenterX), (float)(a.get(i).myCenterY), (float)(bob.myCenterX), (float)(bob.myCenterY)) <= 20){
        a.get(i).setShow(false);
      }
  }

}
public void keyPressed() {
    if (key == 'w') {
        wIsPressed = true;
       
    }
    else if (key == 'a') {
        aIsPressed = true;
    }
    else if (key == 'd') {
        dIsPressed = true;
       
    }
    if (key == 'e') {
        eIsPressed = true;
       
    }
    if(eIsPressed == true){
    bob.setmyCenterX((double)(Math.random()*500));
    bob.setmyCenterY((double)(Math.random()*500));
    bob.setmyXspeed(0);
    bob.setmyYspeed(0);
    bob.setmyPointDirection((double)(Math.random()*360));
    background(255);
  }
    //else if (key == 's') {
    //    bob.accelerate(-.5);
    //}
}
public void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  }
  else if (key == 'a') {
    aIsPressed = false;
  }
  else if (key == 'd') {
    dIsPressed = false;
  }
  if (key == 'e') {
        eIsPressed = false;
       
    }
}
