Player eger;
Enemy cica ;
Powerup speed;
AssetManager assetManager;
PImage hatter;

void setup(){
  size(800, 600);
 eger = new Player();
 cica = new Enemy();
 speed = new Powerup();
 // TODO az assetManager-t elérhetővé tenni az összes MapObject-nek
 assetManager = new AssetManager();
 hatter = assetManager.getImage("logofulu.jpg");
 hatter.resize(800, 600);
}
void draw(){
  eger.follow(mouseX, mouseY);
  cica.follow(eger);
  if(cica.hitbox(eger))
  {
    eger.die();
    background(200, 0, 0);
    noLoop();
    text("mouse died", width/2, height/2);
  }
  else
  {
    image(hatter, 0, 0);
    eger.draw();
    cica.draw();
    speed.draw();
    if(eger.hitbox(speed))
    {
      eger.pickPowerup(speed);
      speed.respawn();
    }
  }
}

void mouseClicked(){
  if(eger.isDead()){
    loop();
    eger = new Player();
    cica = new Enemy();  
  }
}
