class Player extends MapObject{
  
  int originalSpeed;
  int boostTimeout;
  boolean dead;
  
  Player(){
    super(width/2, height/2, 40, 15, "eger.png");
    originalSpeed = 15;
    dead = false;
 
  }
  void die(){
    dead = true;
  }
  boolean isDead (){
    return dead;
  
  }
  
  void pickPowerup(Powerup powerup){
    maxSpeed += powerup.speedBoost();
    boostTimeout += (int)frameRate * 10;
  }
  
  void draw(){
    
    if(boostTimeout > 0){
      boostTimeout--;
    }
    else{
      maxSpeed = originalSpeed;
    }
    super.draw();
  }
  
  
  
 
}
