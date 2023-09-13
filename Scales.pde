void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  for (int y=0; y<500; y+=30)
   for(int x=0; x<500; x+=30)
      scale(x,y);
}
void scale(int x, int y) {
  int d = (int)(Math.random()*255)+100;
  fill(0,d,0);
  stroke(0);
  rect(x,y,10,10);
  ellipse(x,y,40,40);
  noFill();
  fill(0,0,0);
  ellipse(x+10,y,10,10);
  ellipse(x-10,y,10,10);
  noFill();
  bezier(x-10, y-15,  x-5, y+5,  x+5, y+5,  x+10, y-15);
  bezier(x-10, y-5,  x-5, y+5,  x+5, y+5,  x+10, y-5);
  beginShape();
  curveVertex(x-10,y+10);
  curveVertex(x-10,y+10);
  curveVertex(x-5,y+5);
  curveVertex(x,y+10);
  curveVertex(x+5,y+5);
  curveVertex(x+10,y+10);
  curveVertex(x+10,y+10);
  endShape();
}
