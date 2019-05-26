//don’t forget star
size(800,400);
//variables
final float flagWidth = 800;
final float flagHeight = 400;
int xLoc = width/2;
int yLoc = height/2;
void setup() {
  size(800,400);
  xLoc = width/2;
  yLoc = height/2;
}

void draw() {
//Red
rectMode(CENTER); 
stroke(255,0,10);
fill(255,0,10);
rect(xLoc,yLoc,flagWidth,flagHeight);
//sickle
stroke(240,240,40);
fill(240,240,40);
rotate(PI/4);
ellipse(200,50,15,50);
rotate(PI*2);
arc(200, -20, 100, 100, 3.8, PI+PI+HALF_PI, OPEN);
fill(255,0,0);
stroke(255,0,0);
ellipse(190, -20, 90,85);

//hammer
rotate(PI*2);
stroke(240,240,40);
fill(240,240,40);
rectMode(CENTER);
rect(230,-10,100,11);
rotate(-PI*4.25);
quad(120, 143, 100, 123, 125, 105, 165, 105);

//star
strokeWeight(2.5);
stroke(240,240,40);
fill(255,0,0);
rotate(PI/3.3);
star(127, -96, 7.5, 20, 5);

}
