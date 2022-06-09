ArrayList <PVector> points;
void setup(){
  size(800,800);
  points=new ArrayList();
  noFill();
}
void draw(){
  background(255);
  stroke(0);
  strokeWeight(5);
  beginShape();
  for(int i=0;i<points.size();i++){
    vertex(points.get(i).x,points.get(i).y);
  }
  endShape();
}
void mouseClicked(){
  if(mouseEvent.getClickCount()==2){
    fill(155);
    points.add(points.get(0));
  }
  points.add(new PVector(mouseX,mouseY));
}
void keyPressed(){
if(key=='r'){
noFill();
points.clear();
}
}