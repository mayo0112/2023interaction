size(400,400);
colorMode(HSB,360,100,100); 
//H 0~360度 S亮度 0~100% B飽和度 0~100%
for(int i=0;i<400;i++){
  for(int j=0;j<400;j++){
    stroke(i,400,400);
    point(i,j);
  }
}
