class AssetManager {
  
  Asset[] assets;  
  PImage errorImage;
  AssetManager() {
    // felttöljük a képeket
    // TODO az összes képet töltse be az assets mappából
    assets = new Asset[2];
    assets[0] = new Asset("eger.png");
    assets[1] = new Asset("logofulu.jpg");
    errorImage = loadImage("assets/error.jpg");
  }
  
  PImage getImage(String fileName) {
    for(Asset a : assets){
      // ha a fileName megegyezik, akkor megvan
      if(a.fileName.equals(fileName)){
        return a.image;
      }
    }
    return errorImage;
  }
}
