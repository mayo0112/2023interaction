void setup(){
  size(400,400,P3D); //P3D是3D的功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix();  //備份矩陣
    translate(mouseX,mouseY); //移動
    rotateY(radians(mouseX));  //對Y軸轉動
    fill(0,0,255); //面填藍色的盒子
    box(100);
    
    noFill(); //不填充顏色
    scale(2);
    box(100); //3D的方塊
  popMatrix();  //還原矩陣
}
