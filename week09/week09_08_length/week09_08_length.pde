PImage img;
int[][] pos={{93,490},{246,524},{178,524},{161,490},{151,457},{195,491},{229,491},{263,491},{323,456},{298,490},{333,491},{366,491},{315,525},{281,524},{358,457},{392,456},{82,456},{186,456},{128,491},{220,456},{288,457},{212,524},{119,456},{145,524},{253,456},{110,525}};
void setup(){
  size(800,600);
  img=loadImage("keyboard.png");
  rectMode(CENTER); //用中心點畫四邊形
}
void draw(){
  background(#FFFFF2);
  image(img,0,600-266);
  fill(255,0,0,128); //半透明紅色
  rect(mouseX,mouseY,28,30,5);
  fill(0,200,0,128); //半透明綠色
  for(int i=0;i<26;i++){
    if(ID<typing.length() && typing.charAt(0)-'a'==i) rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0); //黑色的字
  textSize(50);
  text(typing,50,50); //要打的字
  fill(255,0,0); //紅色
  if(ID<typing.length())text(typed+typing.charAt(ID),50,100); //現在要打的字 是typing.charAt(0)
  fill(0); //再用黑色秀打好的字
  text(typed,50,100); //已經打好的字
}
String typing="printfprintfprintf";
String typed=""; //一開始打0個字
int ID = 0; //第幾個字母要被打
boolean [] pressed= new boolean[26]; //JAVA的陣列宣告
void keyPressed(){
  if(key>='a'&&key<='z'){
    if(ID<typing.length() && key==typing.charAt(ID)) { //字母正確就往下
      pressed[key-'a']=true;
      typed+=key;
      ID++;
    }else{
      background(255,0,0); //畫面紅色閃一下背景
    }
  }
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a']=false;
}
