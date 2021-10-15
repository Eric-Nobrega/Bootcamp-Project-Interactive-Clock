class clock {
  PFont pixel = createFont("Minecraft.ttf", 75);

  // Initialising default time functions
  int s = second();
  int m = minute();
  int h = hour();
  int d = day();
  int mo = month();
  int y = year();

  // Modified time functions for time difference in locations
  int nh = hour() - 5;
  int tnh = hour() + 8;

  // Global angle variable used in moving sun/moon model
  float angle = 0;


  void ldnTime() {
    // Text properties
    fill(0);
    textSize(75);
    textAlign(CENTER);
    textFont(pixel);

    // Seconds/Minutes/Hour
    text(h + ":" + m + ":" + s, 400, height/2.5);

    // Days/Months/Years
    textSize(50);
    text(d + ":" + mo + ":" + y, 400, height/1.7);

    // If/Else statement to control sun/moon model's properties depending on the time

    if (h >= 7 && h <=18) {
      ldn.displaySun();
    } else if (h>= 19 && h<= 23) {
      ldn.displayMoon();
    } else if (h >= 0 && h<= 6) {
      ldn.displayMoon();
    }
  }

  void nycTime() {
    // Text properties
    fill(0);
    textSize(75);
    textAlign(CENTER);
    textFont(pixel);

    // Seconds/Minutes/Hour
    text(nh + ":" + m + ":" + s, 400, height/2.5);

    // Days/Months/Years
    textSize(50);
    text(d + ":" + mo + ":" + y, 400, height/1.7);

    if (nh >= 7 && nh <= 18) {
      nyc.displaySun();
    } else if (nh >=19  && nh <= 23) {
      nyc.displayMoon();
    } else if (nh >= 0 && nh <= 6) {
      nyc.displayMoon();
    }
  }
  void tokTime() {

    // Text properties
    fill(0);
    textSize(75);
    textAlign(CENTER);
    textFont(pixel);

    // Seconds/Minutes/Hour
    text(tnh + ":" + m + ":" + s, 400, height/2.5);

    // Days/Months/Years
    textSize(50);
    text(d + ":" + mo + ":" + y, 400, height/1.7);

    if (tnh >= 7 && tnh <= 18) {
      nyc.displaySun();
    } else if (tnh >=19  && tnh <= 23) {
      nyc.displayMoon();
    } else if (tnh >= 0 && tnh <= 6) {
      nyc.displayMoon();
    }
  }

  void displaySun() {
    fill(#FFFF71);
    angle = map(second(), 0, 60, 4*PI/3, 5*PI/3);
    translate(width/2, height/2);
    rotate(angle);
    translate(200, 0);
    circle(0, 0, 100);
  }

  void displayMoon() {
    fill(#B4B4B4);
    angle = map(second(), 0, 60, 4*PI/3, 5*PI/3);
    translate(width/2, height/2);
    rotate(angle);
    translate(200, 0);
    circle(0, 0, 100);
  }
}
