/* Interactive Clock by Eric Nobrega */

PFont pixel;
PImage ldnimg, nycimg, tokimg, daybg, nightbg;
clock ldn, nyc, tok;
boolean isMouseClicked = false;

void setup() {
  size(800, 500);

  pixel = createFont("Minecraft.ttf", 75);

  // Initialise Images
  ldnimg = loadImage("london.png");
  nycimg = loadImage("newyorkcity.png");
  tokimg = loadImage("tokyo.png");
  daybg = loadImage("day.png");
  nightbg = loadImage("night.gif");

  // Initliazing clock class objects
  ldn = new clock();
  nyc = new clock();
  tok = new clock();
  background(daybg);
}

void draw() {

  background(daybg);

  fill(255, 255, 255);

  // Centre Rectangle (Intraday date)
  rect(width/5, height/4.25, 480, 125);

  // Lower Rectangle (Broader date)
  rect(180, height/2.05, 440, 75);

  // London Button
  circle(200, 390, 110);
  image(ldnimg, 146, 336, 109, 109);
  buttonText();

  // New York Button
  circle(400, 390, 110);
  image(nycimg, 346, 336, 109, 109);

  // Tokyo Button
  circle(600, 390, 110);
  image(tokimg, 546, 336, 109, 109);


  if (isMouseClicked == true) {
    mouseClicked();
  }
}


void mouseClicked() {
  if (mouseX > 146 && mouseX < 200) {
    if (mouseY > 336 && mouseY < 390) {
      ldn.ldnTime();
      isMouseClicked = true;
    }
  }

  if (mouseX > 346 && mouseX < 400) {
    if (mouseY > 336 && mouseY < 390) {
      nyc.nycTime();
      isMouseClicked = true;
    }
  }

  if (mouseX > 546 && mouseX < 600) {
    if (mouseY > 336 && mouseY < 390 ) {
      tok.tokTime();
      isMouseClicked = true;
    }
  }
}


// Method to control button's text

void buttonText() {
  fill(0);
  textFont(pixel);
  textAlign(CENTER);
  textSize(15);
  text("London", 200, 465);
  text("New York City", 400, 465);
  text("Tokyo", 600, 465);
}
