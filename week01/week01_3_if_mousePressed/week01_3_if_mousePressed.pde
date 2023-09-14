//互動模式 Iteractive Mode(Active Mode)
//大一 >> int main()
void setup(){ //設定
size(500,500); //視窗大小(寬,高);
background(255); //白色背景 
}
void draw(){ //畫圖 每秒畫60次
  if(mousePressed){ //如果mouse有按下去
  line(mouseX,mouseY,pmouseX,pmouseY);
  } //畫線(滑鼠座標mouseX,mouseY,到之前的滑鼠座標pmouseX,pmouseY);
}
