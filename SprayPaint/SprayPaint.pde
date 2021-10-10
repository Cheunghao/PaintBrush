int red, blue;
boolean redPositive, bluePositive;

float xOffset, yOffset;
float radius;

void setup() {
  size(1080, 720);
  noStroke();

  background(0);

  blue = 255;
  redPositive = true;
}

void draw() {
  fill(0, 5);
  rect(0, 0, width, height);
}

void mouseDragged() {
  for (int i=0; i<12; i++) {
    generateOffset();
    drawCircle();
  }
  changeColor();
}

void generateOffset() {
  radius = random(10);
  xOffset = random(40)-20;
  yOffset = random(40)-20;
}

void drawCircle() {
  float x = mouseX + xOffset;
  float y = mouseY + yOffset;

  circle(x, y, radius*2);
}

void changeColor() {
  if (red == 255) {
    redPositive = false;
  } else if (red == 0) {
    redPositive = true;
  }

  if (blue == 255) {
    bluePositive = false;
  } else if (blue == 0) {
    bluePositive = true;
  }

  if (redPositive) {
    red++;
  } else {
    red--;
  }

  if (bluePositive) {
    blue++;
  } else {
    blue--;
  }
  
  fill(red, 100, blue, 220);
}
