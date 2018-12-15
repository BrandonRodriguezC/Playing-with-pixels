PImage photo;
PImage smaller;
int w;
int h;
int scl=100;

void setup(){
  size(960,720);
  photo= loadImage("photo.jpg");
  image(photo,480,0);
 
}
void draw(){
   
   w= photo.width/scl; 
   h= photo.height/scl;
  smaller=createImage(w,h,RGB);
  smaller.copy(photo,0,0,photo.width,photo.height,0,0,w,h);
  smaller.loadPixels();
  for(int x=0;x<w;x++){
     for(int y=0;y<h;y++){
       int index= x+y*w;
      color c= (smaller.pixels[index]);
      noStroke();
      fill(c);
      rect(x*scl,y*scl,scl,scl);
    }
  }
  if (scl>4){
  scl--;
  }
}
