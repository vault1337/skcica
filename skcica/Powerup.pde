class Powerup extends MapObject{
  Powerup(){
    super((int)random(20, width - 20), (int)random(20, height - 20), 20, 0, "powerup.png");
  }

  void respawn(){
    x = (int)random(20, width - 20);
    y = (int)random(20, height - 20);
  }

  int speedBoost(){
    return 30;
  }
}
