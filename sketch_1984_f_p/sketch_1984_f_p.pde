//variables //<>//
int counter = 0, xLoc;
PImage hypnotize;

void setup() {
  size(750, 750);
  background(255);
}

void draw() {
  poster();
  hypnotise();
  people();
}

void poster() {
  //mode
  imageMode(CORNER);

  //load and display image
  PImage bb, slogan;
  bb = loadImage("big_brother_poster.jpg");
  image(bb, 30, 30, 250, 250);
  slogan = loadImage("ingsoc.jpg");
  image(slogan, 450, 30, 250, 250);
}

void hypnotise() {
  //mode
  imageMode(CENTER);
  strokeWeight(3);

  //draw chain
  line(375, 300, 375, 365);

  //draw circle on chain
  hypnotize = loadImage("hypnosis.png");
  image(hypnotize, 375, 380, 50, 50);
}

void people(){
  //mode
  ellipseMode(CENTER);
  strokeWeight(2);
}
