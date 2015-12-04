import processing.sound.*;

SoundFile back;
SoundFile hitm;
SoundFile weed;

PImage hit;
PImage snoop;

void setup()  {
  
frameRate(100);
 
  
  hit = loadImage("hit.png");
  snoop = loadImage("snoop.png");
  
  hitm = new SoundFile(this, "hitm.mp3");
  weed = new SoundFile(this, "wed.mp3");
  
 back = new SoundFile(this, "Smoke on me.mp3");
  back.play();
  
  back.amp(0.5);
  
  size (600, 600);
  background(0);
}

void draw()  {

 tint(random(255), random(255), random(255));
  image(snoop, random(800), random(800), 100, 100);
  
}

void keyPressed()  {
 if (key == 'p'){
   hitm.play();
   tint(random(255), random(255), random(255));
   image(hit, random(500), random(500), 40, 40);
 }
  
}