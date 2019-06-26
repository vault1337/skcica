
class MapObject{ 
  int x;
  int y;
  int size;
  int maxSpeed;
  PImage kep;
  
  
  MapObject(int x, int y, int size, int maxSpeed, String kepNev){
    this.size = size;
    this.x = x;
    this.y = y;
    this.maxSpeed = maxSpeed;
    kep = loadImage(kepNev);
    kep.resize(size, size);
  }
  
  void draw(){
    strokeWeight(5);
    stroke(255, 0, 0);
    ellipse(x, y, size, size);
    image(kep, x-(size/2), y-(size/2));
  }  
  
   boolean hitbox(MapObject other){
     int tavolsag;
     int sugarkulonbseg;
     int xTavolsag;
     int yTavolsag;
     xTavolsag = this.x - other.x;
     yTavolsag = this.y -other.y;
     tavolsag = (int)sqrt((xTavolsag * xTavolsag) + (yTavolsag * yTavolsag));
     if(this.size > other.size){
       sugarkulonbseg = this.size/2 - other.size/2;
     }
     else {
        sugarkulonbseg = other.size/2 - this.size/2;     
     }
     return tavolsag < sugarkulonbseg;
   }
   
   void follow(int x, int y){
     float deltaX = x - this.x;
     float deltaY = y - this.y;
     
     float speed = sqrt((deltaX * deltaX) + (deltaY * deltaY));
     if(speed > maxSpeed){
       deltaX = deltaX / speed * maxSpeed;
       deltaY = deltaY / speed * maxSpeed;
     }
     this.x += (int)deltaX;
     this.y += (int)deltaY;
     
   }
   
   void follow(MapObject other){
     follow(other.x, other.y);     
   }

   
}
