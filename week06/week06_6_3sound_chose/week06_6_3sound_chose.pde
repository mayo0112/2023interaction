import processing.sound.*;
SoundFile a,b,c;
void setup(){
  size(300,300);
  a=new SoundFile(this,"a.mp3");
  b=new SoundFile(this,"b.mp3");
  c=new SoundFile(this,"c.mp3");
}
void draw(){
  text("press 1,2,3",100,100);
}
void keyPressed(){
  if(key=='1') a.play();
  if(key=='2') b.play();
  if(key=='3') c.play();
}
