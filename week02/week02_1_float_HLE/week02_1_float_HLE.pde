float[]HLE={-1042, -3479.7, 1003.7, -1669, -1639.6, -14219, -3655.1, -4917, 9363.2, -4271.8, -24, 681};
float[]HLN={-17090, -13711, -22888, -19631, -23818, -18573, -19636, -15648, -18256, -15721, -17776, -15581};
float[]HLZ={11323, 10563, 16417, 10003, 12566, 19520, 6046.7, 25954, 12589, 11481, 11319, 11670};
int N=12;
void setup(){
  size(500,500);
  frameRate(10);
}
void draw(){
  background(#FFFFF2);
  float dx=HLE[frameCount%N]/100;
  float dy=HLN[frameCount%N]/100;
  rect(200+dx,300+dy,100,100);
}
