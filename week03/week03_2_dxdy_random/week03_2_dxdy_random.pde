//1.點.線.面
void setup(){
  size(500,500);
  dx=random(-1,+1); //亂數 往不同地方隨機
  dy=random(-1,+1);
}
float x=250,y=250;
float dx,dy;
void draw(){
  background(0);
  ellipse(x,y,5,5);
  x+=dx;
  y+=dy;
  if(x<0 || x>500) dx=-dx; //邊界反彈
  if(y<0 || y>500) dy=-dy;
}
