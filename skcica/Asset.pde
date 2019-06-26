class Asset{
  PImage image;
  String fileName;
  
  Asset(String fileName){
    this.fileName = fileName;
    // TODO majd ellenőrizzük, hogy van-e ilyen fájl
    image = loadImage("assets/" + this.fileName);
  }
}
