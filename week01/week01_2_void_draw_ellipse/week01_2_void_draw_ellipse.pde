//互動模式 Iteractive Mode(Active Mode)
//大一 >> int main()
void setup(){ //設定
size(500,500); //視窗大小(寬,高);
background(255,255,0); //背景RGB
}
void draw(){ //畫圖 每秒畫60次
  ellipse(mouseX,mouseY,8,8);
}
