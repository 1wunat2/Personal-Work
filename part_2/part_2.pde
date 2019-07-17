//variables
int counter = 0, xLoc;
PImage hypnotize, nazi, snow, control, hijacked, room101;

void setup() {
  size(750, 750);
  background(255);
  rectMode(CENTER);
}

void draw() {
  changes();
  if (counter == 0) {
    poster();
    hypnotise();
    people();
  } else if (counter == 1) {
    bb();
  } else if (counter == 2) {
    person();
  } else {
    propaganda();
  }
}

void changes() {
  strokeWeight(2);
  noStroke();
  fill(255);
  if (keyPressed && keyCode == UP) {
    counter = 1;
    rect(375, 375, 750, 750);
  } else if (keyPressed && keyCode == DOWN) {
    counter = 2;
    rect(375, 375, 750, 750);
  } else if (keyPressed && keyCode == RIGHT) {
    counter = 3;
    rect(375, 375, 750, 750);
  } else if (keyPressed && keyCode == LEFT) {
    counter = 0;
    rect(375, 375, 750, 750);
  }
  stroke(0);
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

void people() {
  //mode
  ellipseMode(CENTER);
  strokeWeight(2);

  //draw person
  ellipse(375, 500, 25, 25);
  line(375, 512.5, 375, 550);
  line(375, 550, 360, 575);
  line(375, 550, 390, 575);
  line(375, 531.25, 360, 515);
  line(375, 531.25, 390, 515);

  ellipse(435, 500, 25, 25);
  line(435, 512.5, 435, 550);
  line(435, 550, 420, 575);
  line(435, 550, 450, 575);
  line(435, 531.25, 420, 515);
  line(435, 531.25, 450, 515);

  ellipse(315, 500, 25, 25);
  line(315, 512.5, 315, 550);
  line(315, 550, 300, 575);
  line(315, 550, 330, 575);
  line(315, 531.25, 300, 515);
  line(315, 531.25, 330, 515);
}  

void bb() {
  //image
  imageMode(CORNER);
  hijacked = loadImage("peeta.gif");
  image(hijacked, 10, 200, 300, 300);
  room101 = loadImage("room101.jpg");
  image(room101, 400, 275, 290, 250);
  //text
  fill(0);
  textSize(20);
  text("Symbolism of Big Brother, brainwashing/hypnotizing the citizens", 50, 650);
  text("Has control and power, higher up", 225, 50);
  text("Anyone could be Big Brother today, person in power", 25, 155);
  text("Use fear and hatred to brainwash", 350, 250);
  text("Winston was brainwashed in room101", 10, 550);
  text("Peeta was hijacked by the capitol", 10, 575);
}

void person() {
  //image
  imageMode(CORNER);
  control = loadImage("Marionette.png");
  image(control, 25, 225, 300, 400);
  //text
  fill(0);
  textSize(20);
  text("People, citizens who are manipulated by the party", 50, 50);
  text("heads are empty", 350, 150);
  text("They'll split your pretty cranium, and fill it full of air-1984 by David Bowie", 10, 650);
  textSize(30);
  text("Follow orders", 400, 500);
  textSize(20);
  text("Have no emotion or personal thoughts", 25, 200);
  text("People do not think or choose themselves", 315, 375);
}

void propaganda() {
  //image
  imageMode(CORNER);
  nazi = loadImage("nazi propaganda.jpg");
  image(nazi, 50, 250, 250, 200);
  snow = loadImage("h.g.prop.jpg");
  image(snow, 350, 250, 300, 350);
  //text
  fill(0);
  textSize(35);
  text("WW2, Nazi Propaganda", 150, 50);
  textSize(18);
  text("Snow's Propaganda", 500, 650);
  textSize(15);
  text("War is peace, freedom is slavery, ignorance is strength-1984 by George Orwell", 100, 200);
  text("convincing and manipulating that it is the only option for peace", 5, 700);
}
