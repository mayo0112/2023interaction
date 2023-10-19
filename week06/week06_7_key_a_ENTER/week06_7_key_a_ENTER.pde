import processing.sound.*;
SoundFile a,b,c;
void setup(){
  size(800,500);
  textSize(64);
  a=new SoundFile(this,"a.mp3");
  b=new SoundFile(this,"b.mp3");
  c=new SoundFile(this,"c.mp3");
}
String line = "";
void draw(){
  background(0);
  text("Input: "+line,50,100);
}
void keyPressed(){
  if(key>='A' && key<='Z') {line+= key; a.play();}
  if(key>='a' && key<='z') {line+= key; a.play();}
  if(key==BACKSPACE && line.length()>0){
    line = line.substring(0,line.length()-1);
    c.play();
  }
  if(key==ENTER){
    println("ENTER");
    line += key;
    b.play();
  }
}
