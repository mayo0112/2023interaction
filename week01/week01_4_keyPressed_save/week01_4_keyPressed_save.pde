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
void keyPressed(){ //如果有按下keybord的key
  if(key=='1') stroke(255,0,0); //如果按下數字1 筆是紅色的
  if(key=='2') stroke(0,255,0); //如果按下數字2 筆是紅色的
  if(key=='3') stroke(0,0,255); //如果按下數字3 筆是紅色的
  if(key=='s'|| key=='S') save("output.png"); //按下s,存檔output.png
}
