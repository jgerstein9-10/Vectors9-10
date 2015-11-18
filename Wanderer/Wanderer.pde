//declare variables
float x, y, velX, velY, diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;

  //wrap the ball's position
  if (x >= width) {
    x = 0;
  } else if (x <= 0) {
    x = width;
  }
  if (y >= height) {
    y = 0;
  } else if (y <= 0) {
    y = height;
  }
}